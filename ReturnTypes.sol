//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract ReturnTypes {
    // Initializing Bool variable(s)
    bool private booleanValue;

    // Initializing Bool variable(s)
    address private addressValue;
    address[] private addressValueArray;

    // Initializing Integer variable(s)
    uint256 private uint256Value;
    uint128 private uint128Value;
    uint64 private uint64Value;
    uint32 private uint32Value;
    uint16 private uint16Value;
    uint8 private uint8Value;
    int256 private int256Value;

    //  Initializing String variable(s)
    string private stringValue;
    string[] private stringValueArray;

    // Initializing Byte variable(s)
    bytes1 private bytes1Value;
    bytes private bytesValue;
    bytes32 private bytes32Value;

    // Defining an enumerator
    enum enumValue {
        enumValue1,
        enumValue2,
        enumValue3
    }

    enumValue private enumChoice;

    // Defining an array
    uint256[] private uintArrayValue;
    bytes[] private bytesArrayValue;
    bytes32[] private bytes32ArrayValue;
    string[] private stringArrayValue;

    // Defining a Structure
    struct Structure {
        string StructureStringValue;
        uint256 StructureUint256Value;
        bytes32 StructureBytes32Value;
        uint256[] StructureUint256ArrayValue;
        // mapping(uint256 => uint256) StructureMappingValue;
        // TODO : add nested mapping
    }

    // Creating a structure object
    Structure private structValue;
    Structure[] private structValueArray;

    // Initializing Mappings
    mapping(uint256 => uint256) public getUint256ToUint256MappingValue;
    mapping(uint256 => address) public getUint256ToAddressMappingValue;
    mapping(uint256 => string) public getUint256ToStringMappingValue;
    mapping(string => string) public getStringToStringMappingValue;
    mapping(uint256 => uint256[]) public getUint256ToUint256ArrayMappingValue;
    mapping(uint256 => Structure) public getUint256ToStructMappingValue;
    mapping(uint256 => Structure[]) public getUint256ToStructArrayMappingValue;
    mapping(uint256 => mapping(uint256 => address))
        public getUint256MappingToUint256MappingToAddressMappingValue;

    // ========= Setters ========= //

    function updateBooleanValue(bool _booleanValue) public {
        booleanValue = _booleanValue;
    }

    function updateAddressValue(address _address) public {
        addressValue = _address;
        addressValueArray.push(_address);
    }

    function updateIntegerValue(
        uint256 _uint256Value,
        uint128 _uint128Value,
        uint64 _uint64Value,
        uint32 _uint32Value,
        uint16 _uint16Value,
        uint8 _uint8Value,
        int256 _int256Value
    ) public {
        uint256Value = _uint256Value;
        uint128Value = _uint128Value;
        uint64Value = _uint64Value;
        uint32Value = _uint32Value;
        uint16Value = _uint16Value;
        uint8Value = _uint8Value;
        int256Value = _int256Value;
    }

    function updateStringValue(string memory _stringValue) public {
        stringValue = _stringValue;
        stringValueArray.push(_stringValue);
    }

    function updateBytesValue(
        bytes1 _bytes1Value,
        bytes memory _bytesValue,
        bytes32 _bytes32Value
    ) public {
        bytes1Value = _bytes1Value;
        bytesValue = _bytesValue;
        bytes32Value = _bytes32Value;
    }

    function updateEnumValue(enumValue _value) public {
        enumChoice = _value;
    }

    function updateArray(
        uint256 _uintArrayValue,
        bytes memory _bytesArrayValue,
        bytes32 _bytes32ArrayValue,
        string memory _stringArrayValue
    ) public {
        uintArrayValue.push(_uintArrayValue);
        bytesArrayValue.push(_bytesArrayValue);
        bytes32ArrayValue.push(_bytes32ArrayValue);
        stringArrayValue.push(_stringArrayValue);
    }

    function updateStruct(Structure memory _struct) public {
        structValue = _struct;
        structValueArray.push(_struct);
    }

    function updateUint256ToUint256Mapping(uint256 _key, uint256 _value)
        public
    {
        getUint256ToUint256MappingValue[_key] = _value;
    }

    function updateUint256ToAddressMapping(uint256 _key, address _value)
        public
    {
        getUint256ToAddressMappingValue[_key] = _value;
    }

    function updateUint256ToStringMapping(uint256 _key, string memory _value)
        public
    {
        getUint256ToStringMappingValue[_key] = _value;
    }

    function updateStringToStringMapping(
        string memory _key,
        string memory _value
    ) public {
        getStringToStringMappingValue[_key] = _value;
    }

    function updateUint256ToUint256ArrayMapping(uint256 _key, uint256 _value)
        public
    {
        getUint256ToUint256ArrayMappingValue[_key].push(_value);
    }

    function updateUint256ToStructMapping(uint256 _key, Structure memory _value)
        public
    {
        getUint256ToStructMappingValue[_key] = (_value);
    }

    function updateUint256ToStructArrayMapping(
        uint256 _key,
        Structure memory _value
    ) public {
        getUint256ToStructArrayMappingValue[_key].push(_value);
    }

    function updateUint256ToUint256ToAddressMapping(
        uint256 _key1,
        uint256 _key2,
        address _value
    ) public {
        getUint256MappingToUint256MappingToAddressMappingValue[_key1][_key2] = (
            _value
        );
    }

    // ========= Getters ========= //
    function getBooleanValue() external view returns (bool) {
        return booleanValue;
    }

    function getBooleanValueWithName()
        external
        view
        returns (bool booleanValue_)
    {
        return booleanValue;
    }

    function getAddressValue() external view returns (address) {
        return addressValue;
    }

    function getAddressValueWithName()
        external
        view
        returns (address addressValue_)
    {
        return addressValue;
    }

    function getAddressArrayValue() external view returns (address[] memory) {
        return addressValueArray;
    }

    function getAddressArrayValueWithName()
        external
        view
        returns (address[] memory addressArrayValue_)
    {
        return addressValueArray;
    }

    function getAddressValueMixed()
        external
        view
        returns (
            address,
            address addressWithName_,
            address[] memory,
            address[] memory addressArrayWithName_
        )
    {
        return (
            addressValue,
            addressValue,
            addressValueArray,
            addressValueArray
        );
    }

    function getAddressArrayValueOnIndex(uint256 _index)
        external
        view
        returns (address)
    {
        return addressValueArray[_index];
    }

    function getAddressArrayValueOnIndexWithName(uint256 _index)
        external
        view
        returns (address addressValue_)
    {
        return addressValueArray[_index];
    }

    function getAllIntegerValues()
        external
        view
        returns (
            uint256,
            uint128,
            uint64,
            uint32,
            uint16,
            uint8,
            int256
        )
    {
        return (
            uint256Value,
            uint128Value,
            uint64Value,
            uint32Value,
            uint16Value,
            uint8Value,
            int256Value
        );
    }

    function getAllIntegerValuesWithName()
        external
        view
        returns (
            uint256 uint256Value_,
            uint128 uint128Value_,
            uint64 uint64Value_,
            uint32 uint32Value_,
            uint16 uint16Value_,
            uint8 uint8Value_,
            int256 int256Value_
        )
    {
        return (
            uint256Value,
            uint128Value,
            uint64Value,
            uint32Value,
            uint16Value,
            uint8Value,
            int256Value
        );
    }

    function getStringValue() external view returns (string memory) {
        return stringValue;
    }

    function getStringValueWithName()
        external
        view
        returns (string memory stringValue_)
    {
        return stringValue;
    }

    function getStringValueArray() external view returns (string[] memory) {
        return stringValueArray;
    }

    function getStringValueArrayWithName()
        external
        view
        returns (string[] memory stringValueArray_)
    {
        return stringValueArray;
    }

    function getStringValueMixed()
        public
        view
        returns (
            string memory,
            string memory stringWithName_,
            string[] memory,
            string[] memory stringArrayWithName_
        )
    {
        return (stringValue, stringValue, stringValueArray, stringValueArray);
    }

    function getAllBytesValue()
        external
        view
        returns (
            bytes1,
            bytes memory,
            bytes32
        )
    {
        return (bytes1Value, bytesValue, bytes32Value);
    }

    function getAllBytesValueWithName()
        external
        view
        returns (
            bytes1 bytes1Value_,
            bytes memory bytesValue_,
            bytes32 bytes32Value_
        )
    {
        return (bytes1Value, bytesValue, bytes32Value);
    }

    function stringToBytes32(string memory _string)
        external
        pure
        returns (bytes32)
    {
        bytes32 result;
        assembly {
            result := mload(add(_string, 32))
        }
        return result;
    }

    function bytes32ToString(bytes32 _bytes32)
        external
        pure
        returns (string memory)
    {
        bytes memory bytesArray = new bytes(32);
        for (uint256 i; i < 32; i++) {
            bytesArray[i] = _bytes32[i];
        }
        return string(bytesArray);
    }

    function getUint256Array() external view returns (uint256[] memory) {
        return (uintArrayValue);
    }

    function getUint256ArrayWithName()
        external
        view
        returns (uint256[] memory uintArrayValue_)
    {
        return (uintArrayValue);
    }

    function getBytesArray() external view returns (bytes[] memory) {
        return (bytesArrayValue);
    }

    function getBytesArrayWithName()
        external
        view
        returns (bytes[] memory bytesArrayValue_)
    {
        return (bytesArrayValue);
    }

    function getBytes32Array() external view returns (bytes32[] memory) {
        return (bytes32ArrayValue);
    }

    function getBytes32ArrayWithName()
        external
        view
        returns (bytes32[] memory bytes32ArrayValue_)
    {
        return (bytes32ArrayValue);
    }

    function getStringArray() external view returns (string[] memory) {
        return (stringArrayValue);
    }

    function getStringWithName()
        external
        view
        returns (string[] memory stringArrayValue_)
    {
        return (stringArrayValue);
    }

    function getAllArray()
        external
        view
        returns (
            uint256[] memory,
            bytes[] memory,
            bytes32[] memory,
            string[] memory
        )
    {
        return (
            uintArrayValue,
            bytesArrayValue,
            bytes32ArrayValue,
            stringArrayValue
        );
    }

    function getAllArraWithName()
        external
        view
        returns (
            uint256[] memory uintArrayValue_,
            bytes[] memory bytesArrayValue_,
            bytes32[] memory bytes32ArrayValue_,
            string[] memory stringArrayValue_
        )
    {
        return (
            uintArrayValue,
            bytesArrayValue,
            bytes32ArrayValue,
            stringArrayValue
        );
    }

    function getAllArrayValueAtIndex(uint256 _index)
        external
        view
        returns (
            uint256,
            bytes memory,
            bytes32,
            string memory
        )
    {
        return (
            uintArrayValue[_index],
            bytesArrayValue[_index],
            bytes32ArrayValue[_index],
            stringArrayValue[_index]
        );
    }

    function getAllArrayValueAtIndexWithName(uint256 _index)
        external
        view
        returns (
            uint256 uint256_,
            bytes memory bytes_,
            bytes32 bytes32_,
            string memory string_
        )
    {
        return (
            uintArrayValue[_index],
            bytesArrayValue[_index],
            bytes32ArrayValue[_index],
            stringArrayValue[_index]
        );
    }

    function getStructValue() public view returns (Structure memory) {
        return structValue;
    }

    function getStructValueWithName()
        public
        view
        returns (Structure memory structValue_)
    {
        return structValue;
    }

    function getStructArrayValue() public view returns (Structure[] memory) {
        return structValueArray;
    }

    function getStructArrayValueWithName()
        public
        view
        returns (Structure[] memory getStructArrayValue_)
    {
        return structValueArray;
    }

    function getStructArrayValueOnIndex(uint256 _index)
        public
        view
        returns (Structure memory)
    {
        return structValueArray[_index];
    }

    function getStructArrayValueOnIndexWithName(uint256 _index)
        public
        view
        returns (Structure memory structValueArray_)
    {
        return structValueArray[_index];
    }

    function getEnumValue() public view returns (enumValue) {
        return enumChoice;
    }

    function getEnumValueWithName() public view returns (enumValue enumValue_) {
        return enumChoice;
    }
}
