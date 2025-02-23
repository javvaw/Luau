local table = table.clone(getrenv().table)

--> https://en.wikipedia.org/wiki/Map_(higher-order_function)

function table.map<K, T, U>(t: { [K]: T }, f: (T, K, { [K]: T }) -> U): { [K]: U }
    local mapped = {}

    for k, v in t do
        mapped[k] = f(v, k, t)
    end

    return mapped
end
