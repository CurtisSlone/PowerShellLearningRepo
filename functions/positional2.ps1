Function get-product {
    $product = $Args[0] * $Args[1]
    Write-output "The product of $($Args[0]) and $($Args[1]) is $product"
    }