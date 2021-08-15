import "@chainlink/contracts/src/v0.6/interfaces/AggregatorV3Interface.sol";

contract EthUsdRinkebyTestnetOracle {
    AggregatorV3Interface private priceFeed;    
    
    constructor() public {
        priceFeed = AggregatorV3Interface(0x8A753747A1Fa494EC906cE90E9f37563A8AF630e);
        
    }

    function getThePrice() public view returns (int) {
        (
            uint80 roundID, 
            int price,
            uint startedAt,
            uint timeStamp,
            uint80 answeredInRound
        ) = priceFeed.latestRoundData();
        return price;
    }
}