module K8sClusterManagers

using Dates
using Distributed
using JSON
using Kuber

import Distributed: launch, manage, kill

worker_arg() = `--worker=$(Distributed.init_multi(); cluster_cookie())`

include("native_driver.jl")
export addprocs_pod
export K8sNativeManager
export launch, manage, kill

end