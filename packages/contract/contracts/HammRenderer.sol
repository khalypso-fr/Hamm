// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;
import "@openzeppelin/contracts/utils/Strings.sol";

contract HammRenderer {
    function renderSvg(uint256 _tokenId) public pure returns (string memory) {
        string memory formattedTokenId = Strings.toString(_tokenId);
        uint stringLength = bytes(formattedTokenId).length;
        uint8 fontSize = 55;
        if (stringLength > 22) fontSize = 40;
        if (stringLength > 31) fontSize = 30;
        if (stringLength > 43) fontSize = 20;
        if (stringLength > 65) fontSize = 17;
        return
            string.concat(
                '<svg xmlns="http://www.w3.org/2000/svg" width="1000" height="1000" style="background:#fff">',
                '<g xmlns="http://www.w3.org/2000/svg">',
                '<g transform="translate(0.000000,511.000000) scale(0.100000,-0.100000)">',
                '<path d="M2266.2,4734.3c-298.3-34.6-729.3-175.1-854.4-277.1c-88.5-73.1-140.5-186.7-140.5-311.7c0-86.6,28.9-157.8,261.7-635c144.3-294.4,296.3-611.9,340.6-704.3l77-169.3L1789,2469.4c-169.3-177-344.5-398.3-469.5-592.7c-78.9-123.2-298.3-563.8-298.3-598.5c0-11.5-36.6-30.8-82.7-44.3c-44.3-13.5-152-57.7-238.6-100.1c-404.1-198.2-569.6-560-596.5-1297c-23.1-662,77-1106.5,306-1366.3c150.1-169.3,311.7-250.2,727.4-363.7c105.8-28.9,109.7-32.7,227.1-213.6c152-230.9,415.7-508,633.1-663.9c155.9-109.7,527.3-309.8,675.4-361.8l61.6-21.2v-404.1c0-363.7,3.9-415.7,40.4-511.9c55.8-150.1,213.6-315.6,367.5-386.8l121.2-55.8l635-5.8c667.7-7.7,796.7,3.9,941,77c115.5,59.6,255.9,202.1,313.7,321.4c48.1,98.1,53.9,132.8,63.5,377.2l9.6,269.4l356,5.8c196.3,3.9,384.9,0,419.5-5.8l61.6-11.5v-196.3c0-113.5,11.5-246.3,28.9-311.7c61.6-238.6,261.7-438.7,500.3-500.3c167.4-42.3,1277.8-42.3,1443.2,0c211.7,55.8,375.2,192.4,469.5,394.5c50,105.8,50,109.7,55.8,663.9l7.7,558l121.2,82.7c146.2,100.1,388.7,332.9,511.9,494.6c342.5,446.4,558.1,1008.4,663.9,1731.9c25,167.4,34.7,352.1,34.7,673.5c0,386.8-5.8,467.6-44.3,644.6c-90.4,421.4-254,821.7-481.1,1168.1l-115.5,177l105.8,109.7c57.7,59.7,132.8,165.5,167.4,236.7c57.7,117.4,61.6,138.6,61.6,329.1c0,196.3-1.9,209.7-71.2,348.3c-92.4,186.7-263.6,371.4-375.2,404.1c-146.2,42.3-306-52-342.5-200.1c-25-96.2,7.7-180.9,117.4-306c132.8-153.9,155.9-227.1,103.9-334.8c-21.2-42.3-59.6-98.1-86.6-123.2l-46.2-44.2l-140.5,130.8C8087.3,3264.1,7148.2,3687.5,6111,3843.4c-304,44.3-1191.1,46.2-1477.9,3.8l-188.6-28.9l-179,173.2c-379.1,371.4-792.8,602.3-1264.3,706.2C2803.1,4740.1,2472.1,4757.4,2266.2,4734.3z M2949.3,4139.7c429.1-109.7,804.4-369.5,1181.5-817.8l96.2-113.5l219.4,40.4c365.6,69.3,625.4,86.6,1064.1,75.1c281-7.7,481.1-23.1,640.8-50c1716.5-292.5,2963.5-1370.1,3177.1-2744.1C9384.3,164,9340-499.9,9228.4-942.5c-169.3-679.3-535-1223.9-994.9-1485.6c-61.6-34.6-138.6-78.9-169.3-96.2l-57.7-34.6v-654.3v-656.2l-48.1-46.2l-46.2-48.1h-598.5h-598.5l-46.2,48.1c-46.2,44.3-48.1,57.7-48.1,277.1c0,288.7-34.6,394.5-167.4,525.3c-198.2,190.5-307.9,213.6-939.1,196.3c-546.5-15.4-563.8-19.2-698.5-171.3c-107.8-123.2-138.6-225.1-150.1-510c-13.5-302.1-15.4-315.6-75-342.5c-67.4-30.8-1162.3-32.7-1227.7-1.9c-84.7,38.5-90.4,82.8-90.4,660.1v542.6l-175.1,53.9c-644.7,192.4-1083.4,529.2-1372,1058.4c-63.5,115.5-86.6,136.6-173.2,177c-53.9,23.1-180.9,67.4-281,94.3c-296.3,82.7-350.2,105.8-436.8,194.4c-130.8,134.7-179,359.8-179,854.4c0,600.4,75,835.2,306,950.6c48.1,25,177,71.2,286.7,100.1l196.3,55.8l50,153.9c180.9,544.6,511.9,1004.5,1044.9,1454.8l103.9,88.5l-381,783.2c-309.8,635-377.2,787.1-354.1,802.5c26.9,15.4,319.4,86.6,431,102C2460.5,4201.3,2806.9,4176.3,2949.3,4139.7z"/>'
                '<path d="M4908.3,2810c-273.3-26.9-598.5-78.9-667.7-107.8c-119.3-48.1-171.3-198.2-111.6-315.6c65.4-127,117.4-134.7,504.2-77c500.3,73.1,1079.5,69.3,1533.7-11.6c252.1-44.3,311.7-38.5,388.7,38.5c55.8,55.8,65.4,78.9,65.4,155.9c0,123.2-80.8,207.8-230.9,238.6C6026.3,2806.1,5287.4,2844.6,4908.3,2810z"/>',
                '<path d="M2945.5,1578.4c-192.4-36.6-346.4-217.4-346.4-406c0-232.8,242.5-448.4,465.7-413.7c163.6,26.9,296.3,132.8,342.5,273.3c38.5,115.5,15.4,282.9-50,377.2C3268.8,1536.1,3093.7,1607.3,2945.5,1578.4z"/>',
                "</g>",
                "</g>",
                '<text x="50%" y="55%" dominant-baseline="middle" text-anchor="middle" font-family="Verdana" font-size="',
                Strings.toString(fontSize),
                '">',
                "#",
                formattedTokenId,
                "</text>",
                "</svg>"
            );
    }
}
