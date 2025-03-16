variable "LIBC" {
    default = "glibc"
}

target "_common" {
    context = "."
}

target "_build_base" {
    inherits = ["_common"]
    dockerfile = "docker/build.${LIBC}.Dockerfile"
}

target "build" {
    inherits = ["_common"]
    dockerfile = "docker/build.Dockerfile"
    contexts = {
        base = "target:_build_base"
    }
}

target "_test_base" {
    inherits = ["_common"]
    dockerfile = "docker/test.${LIBC}.Dockerfile"
}

target "test" {
    inherits = ["_common"]
    dockerfile = "docker/test.Dockerfile"
    contexts = {
        base = "target:_test_base"
        build = "target:build"
    }
    outputs = [{ type = "cacheonly" }]
}
