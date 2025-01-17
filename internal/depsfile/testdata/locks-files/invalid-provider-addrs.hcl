provider "" { # ERROR: Invalid provider source address

}

provider "opentofu/aws" { # ERROR: Non-normalized provider source address

}

provider "aws" { # ERROR: Non-normalized provider source address

}

provider "too/many/parts/here" { # ERROR: Invalid provider source address

}

provider "Registry.opentofu.org/example/example" { # ERROR: Non-normalized provider source address

}

provider "registry.opentofu.org/eXample/example" { # ERROR: Non-normalized provider source address

}

provider "registry.opentofu.org/example/Example" { # ERROR: Non-normalized provider source address

}

provider "this/one/okay" {
  version = "1.0.0"
}

provider "this/one/okay" { # ERROR: Duplicate provider lock
}

# Legacy providers are not allowed, because they existed only to
# support the Terraform 0.13 upgrade process.
provider "registry.opentofu.org/-/null" { # ERROR: Invalid provider source address
}

# Built-in providers are not allowed, because they are not versioned
# independently of the OpenTofu CLI release they are embedded in.
provider "terraform.io/builtin/foo" { # ERROR: Invalid provider source address
}
