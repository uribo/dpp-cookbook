options(htmltools.dir.version = FALSE, digits = 3)
library(tidyverse)
library(tidymodels)
library(conflicted)
conflicted::conflict_prefer("filter", winner = "dplyr")
source("https://gist.githubusercontent.com/uribo/bc5df991469c8024cc3db78aa669df7a/raw/ac177741ea185292b38c0a00cf9b1bfb052321ae/ds_view.R")
theme_set(theme_light(base_size = 5.6,
                      base_family = dplyr::if_else(grepl("mac", sessioninfo::os_name()),
                                                   "IPAexGothic",
                                                   "IPAGothic")))

df_lp_kanto <-
  read_csv(here::here("data-raw/landprice_kanto.csv"),
           col_types = 
             cols(.row_id = "i",
                  .prefecture = "c",
                  administrative_area_code = "c",
                  posted_land_price = "i",
                  name_of_nearest_station = "c",
                  distance_from_station = "i",
                  acreage = "i",
                  current_use = "c",
                  usage_description = "c",
                  building_structure = "c",
                  attribute_change_supplied_facility = "l",
                  water_facility = "l",
                  gas_facility = "l",
                  sewage_facility = "l",
                  proximity_with_transportation_facility = "c",
                  depth_ratio = "d",
                  number_of_floors = "i",
                  number_of_basement_floors = "i",
                  use_district = "c",
                  building_coverage = "d",
                  configuration = "c",
                  surrounding_present_usage = "c",
                  fire_area = "c",
                  urban_planning_area = "c",
                  forest_law = "c",
                  parks_law = "c",
                  attribute_change_floor_area_ratio = "l",
                  frontage_ratio = "d",
                  floor_area_ratio = "d",
                  attribute_change_selected_land_status = "c",
                  attribute_change_address = "l",
                  attribute_change_acreage = "l",
                  attribute_change_current_use = "l",
                  attribute_change_building_structure = "l",
                  attribute_change_distance_from_station = "l",
                  attribute_change_use_district = "l",
                  attribute_change_fire_area = "l",
                  attribute_change_urban_planning_area = "l",
                  attribute_change_forest_law = "l",
                  attribute_change_parks_law = "l",
                  attribute_change_building_coverage = "l",
                  common_surveyed_position = "l",
                  night_population = "d",
                  .longitude = "d", 
                  .latitude = "d")) %>% 
  assertr::verify(dim(.) == c(8476, 45))
