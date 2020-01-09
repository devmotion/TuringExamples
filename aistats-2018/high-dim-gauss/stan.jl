using Random: seed!
seed!(1)

include("data.jl")

data = get_data()

const model_str = "
data {
  int D;
}
parameters {
  real m[D];
}
model {
  for (d in 1:D)
    m[d] ~ normal(0, 1);
}
"

include("../infer_stan.jl")

;