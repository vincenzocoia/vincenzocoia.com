# Coldwater River annual maximum flows
#
# Builds the data used in "The best distributions don't have names".
#
# Source: Water Survey of Canada, HYDAT station 08LG048 (Coldwater River near
# Brookmere, BC), read through the tidyhydat package. Running this needs a local
# copy of the HYDAT database; see tidyhydat::download_hydat().
#
# Flows are in m^3/s. For each year we take the largest snowmelt-season flow and
# the largest rainfall-season flow, then the larger of the two. The season split
# is deliberately crude — see the post.

library(tidyhydat)
library(dplyr)
library(tidyr)
library(lubridate)
library(readr)

coldwater <- hy_daily_flows("08LG048") |>
    filter(Parameter == "Flow")

seasons <- coldwater |>
    mutate(
        Driver = if_else(
            yday(Date) > 100 & yday(Date) < 200,
            "Snowmelt",
            "Rainfall"
        ),
        Year = year(Date)
    )

df <- seasons |>
    group_by(Year, Driver) |>
    summarise(Flow = max(Value, na.rm = TRUE), .groups = "drop") |>
    pivot_wider(names_from = "Driver", values_from = "Flow") |>
    drop_na() |>
    # HYDAT stores flows as 32-bit floats, so a recorded 19.6 arrives as
    # 19.6000003814697. Rounding recovers the value actually on record.
    mutate(across(c(Rainfall, Snowmelt), \(x) round(x, 3))) |>
    mutate(Max = pmax(Rainfall, Snowmelt)) |>
    arrange(desc(Year))

write_csv(df, "coldwater.csv")
