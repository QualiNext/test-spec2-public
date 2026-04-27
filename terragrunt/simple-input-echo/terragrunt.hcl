terraform {
  source = "../../terraform/tf-inputs-echo"
}

inputs = {
  test_string1 = "tg-default-1"
  test_string2 = "tg-default-2"
  test_number  = 2
  test_bool    = true
}
