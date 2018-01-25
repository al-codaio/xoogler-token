module.exports = {
  networks: {
    development: {
      host: "localhost",
      port: 8545,
      network_id: "*"
    },
    rinkeby: {
      host: "localhost",
      port: 8545,
      from: "0xfb27816c324bb208fe630f5272e95e2d7487e287",
      network_id: 4,
      gas: 6000000
    }
  }
}
