/**
 *Submitted for verification at testnet.bscscan.com on 2024-03-08
*/

// SPDX-License-Identifier: MIT

pragma solidity 0.8.9;

/**
 * @dev Provides information about the current execution context, including the
 * sender of the transaction and its data. While these are generally available
 * via msg.sender and msg.data, they should not be accessed in such a direct
 * manner, since when dealing with meta-transactions the account sending and
 * paying for execution may not be the actual sender (as far as an application
 * is concerned).
 *
 * This contract is only required for intermediate, library-like contracts.
 */
abstract contract Context {
    function _msgSender() internal view virtual returns (address) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes calldata) {
        return msg.data;
    }
}

library SafeMath {
    /**
     * @dev Returns the addition of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    function tryAdd(uint256 a, uint256 b)
        internal
        pure
        returns (bool, uint256)
    {
        unchecked {
            uint256 c = a + b;
            if (c < a) return (false, 0);
            return (true, c);
        }
    }

    /**
     * @dev Returns the substraction of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    function trySub(uint256 a, uint256 b)
        internal
        pure
        returns (bool, uint256)
    {
        unchecked {
            if (b > a) return (false, 0);
            return (true, a - b);
        }
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    function tryMul(uint256 a, uint256 b)
        internal
        pure
        returns (bool, uint256)
    {
        unchecked {
            // Gas optimization: this is cheaper than requiring 'a' not being zero, but the
            // benefit is lost if 'b' is also tested.
            // See: https://github.com/OpenZeppelin/openzeppelin-contracts/pull/522
            if (a == 0) return (true, 0);
            uint256 c = a * b;
            if (c / a != b) return (false, 0);
            return (true, c);
        }
    }

    /**
     * @dev Returns the division of two unsigned integers, with a division by zero flag.
     *
     * _Available since v3.4._
     */
    function tryDiv(uint256 a, uint256 b)
        internal
        pure
        returns (bool, uint256)
    {
        unchecked {
            if (b == 0) return (false, 0);
            return (true, a / b);
        }
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers, with a division by zero flag.
     *
     * _Available since v3.4._
     */
    function tryMod(uint256 a, uint256 b)
        internal
        pure
        returns (bool, uint256)
    {
        unchecked {
            if (b == 0) return (false, 0);
            return (true, a % b);
        }
    }

    /**
     * @dev Returns the addition of two unsigned integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `+` operator.
     *
     * Requirements:
     *
     * - Addition cannot overflow.
     */
    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        return a + b;
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting on
     * overflow (when the result is negative).
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     *
     * - Subtraction cannot overflow.
     */
    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        return a - b;
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `*` operator.
     *
     * Requirements:
     *
     * - Multiplication cannot overflow.
     */
    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
        return a * b;
    }

    /**
     * @dev Returns the integer division of two unsigned integers, reverting on
     * division by zero. The result is rounded towards zero.
     *
     * Counterpart to Solidity's `/` operator.
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function div(uint256 a, uint256 b) internal pure returns (uint256) {
        return a / b;
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * reverting when dividing by zero.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function mod(uint256 a, uint256 b) internal pure returns (uint256) {
        return a % b;
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting with custom message on
     * overflow (when the result is negative).
     *
     * CAUTION: This function is deprecated because it requires allocating memory for the error
     * message unnecessarily. For custom revert reasons use {trySub}.
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     *
     * - Subtraction cannot overflow.
     */
    function sub(
        uint256 a,
        uint256 b,
        string memory errorMessage
    ) internal pure returns (uint256) {
        unchecked {
            require(b <= a, errorMessage);
            return a - b;
        }
    }

    /**
     * @dev Returns the integer division of two unsigned integers, reverting with custom message on
     * division by zero. The result is rounded towards zero.
     *
     * Counterpart to Solidity's `/` operator. Note: this function uses a
     * `revert` opcode (which leaves remaining gas untouched) while Solidity
     * uses an invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function div(
        uint256 a,
        uint256 b,
        string memory errorMessage
    ) internal pure returns (uint256) {
        unchecked {
            require(b > 0, errorMessage);
            return a / b;
        }
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * reverting with custom message when dividing by zero.
     *
     * CAUTION: This function is deprecated because it requires allocating memory for the error
     * message unnecessarily. For custom revert reasons use {tryMod}.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function mod(
        uint256 a,
        uint256 b,
        string memory errorMessage
    ) internal pure returns (uint256) {
        unchecked {
            require(b > 0, errorMessage);
            return a % b;
        }
    }
}

/**
 * @dev Contract module that helps prevent reentrant calls to a function.
 *
 * Inheriting from `ReentrancyGuard` will make the {nonReentrant} modifier
 * available, which can be applied to functions to make sure there are no nested
 * (reentrant) calls to them.
 *
 * Note that because there is a single `nonReentrant` guard, functions marked as
 * `nonReentrant` may not call one another. This can be worked around by making
 * those functions `private`, and then adding `external` `nonReentrant` entry
 * points to them.
 *
 * TIP: If you would like to learn more about reentrancy and alternative ways
 * to protect against it, check out our blog post
 * https://blog.openzeppelin.com/reentrancy-after-istanbul/[Reentrancy After Istanbul].
 */
abstract contract ReentrancyGuard {
    // Booleans are more expensive than uint256 or any type that takes up a full
    // word because each write operation emits an extra SLOAD to first read the
    // slot's contents, replace the bits taken up by the boolean, and then write
    // back. This is the compiler's defense against contract upgrades and
    // pointer aliasing, and it cannot be disabled.

    // The values being non-zero value makes deployment a bit more expensive,
    // but in exchange the refund on every call to nonReentrant will be lower in
    // amount. Since refunds are capped to a percentage of the total
    // transaction's gas, it is best to keep them low in cases like this one, to
    // increase the likelihood of the full refund coming into effect.
    uint256 private constant _NOT_ENTERED = 1;
    uint256 private constant _ENTERED = 2;

    uint256 private _status;

    constructor() {
        _status = _NOT_ENTERED;
    }

    /**
     * @dev Prevents a contract from calling itself, directly or indirectly.
     * Calling a `nonReentrant` function from another `nonReentrant`
     * function is not supported. It is possible to prevent this from happening
     * by making the `nonReentrant` function external, and making it call a
     * `private` function that does the actual work.
     */
    modifier nonReentrant() {
        // On the first call to nonReentrant, _notEntered will be true
        require(_status != _ENTERED, "ReentrancyGuard: reentrant call");

        // Any calls to nonReentrant after this point will fail
        _status = _ENTERED;

        _;

        // By storing the original value once again, a refund is triggered (see
        // https://eips.ethereum.org/EIPS/eip-2200)
        _status = _NOT_ENTERED;
    }
}

/**
 * @dev Contract module which provides a basic access control mechanism, where
 * there is an account (an owner) that can be granted exclusive access to
 * specific functions.
 *
 * By default, the owner account will be the one that deploys the contract. This
 * can later be changed with {transferOwnership}.
 *
 * This module is used through inheritance. It will make available the modifier
 * `onlyOwner`, which can be applied to your functions to restrict their use to
 * the owner.
 */
abstract contract Ownable is Context {
    address private _owner;

    event OwnershipTransferred(
        address indexed previousOwner,
        address indexed newOwner
    );

    /**
     * @dev Initializes the contract setting the deployer as the initial owner.
     */
    constructor() {
        _transferOwnership(_msgSender());
    }

    /**
     * @dev Returns the address of the current owner.
     */
    function owner() public view virtual returns (address) {
        return _owner;
    }

    /**
     * @dev Throws if called by any account other than the owner.
     */
    modifier onlyOwner() {
        require(owner() == _msgSender(), "Ownable: caller is not the owner");
        _;
    }

    /**
     * @dev Leaves the contract without owner. It will not be possible to call
     * `onlyOwner` functions anymore. Can only be called by the current owner.
     *
     * NOTE: Renouncing ownership will leave the contract without an owner,
     * thereby removing any functionality that is only available to the owner.
     */
    function renounceOwnership() public virtual onlyOwner {
        _transferOwnership(address(0));
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Can only be called by the current owner.
     */
    function transferOwnership(address newOwner) public virtual onlyOwner {
        require(
            newOwner != address(0),
            "Ownable: new owner is the zero address"
        );
        _transferOwnership(newOwner);
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Internal function without access restriction.
     */
    function _transferOwnership(address newOwner) internal virtual {
        address oldOwner = _owner;
        _owner = newOwner;
        emit OwnershipTransferred(oldOwner, newOwner);
    }
}

interface IERC20 {
    /**
     * @dev Returns the amount of tokens in existence.
     */
    function totalSupply() external view returns (uint256);

    /**
     * @dev Returns the token decimals.
     */
    function decimals() external view returns (uint8);

    /**
     * @dev Returns the token symbol.
     */
    function symbol() external view returns (string memory);

    /**
     * @dev Returns the token name.
     */
    function name() external view returns (string memory);

    /**
     * @dev Returns the bep token owner.
     */
    function getOwner() external view returns (address);

    /**
     * @dev Returns the amount of tokens owned by `account`.
     */
    function balanceOf(address account) external view returns (uint256);

    /**
     * @dev Moves `amount` tokens from the caller's account to `recipient`.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transfer(address recipient, uint256 amount)
        external
        returns (bool);

    /**
     * @dev Returns the remaining number of tokens that `spender` will be
     * allowed to spend on behalf of `owner` through {transferFrom}. This is
     * zero by default.
     *
     * This value changes when {approve} or {transferFrom} are called.
     */
    function allowance(address _owner, address spender)
        external
        view
        returns (uint256);

    /**
     * @dev Sets `amount` as the allowance of `spender` over the caller's tokens.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * IMPORTANT: Beware that changing an allowance with this method brings the risk
     * that someone may use both the old and the new allowance by unfortunate
     * transaction ordering. One possible solution to mitigate this race
     * condition is to first reduce the spender's allowance to 0 and set the
     * desired value afterwards:
     * https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
     *
     * Emits an {Approval} event.
     */
    function approve(address spender, uint256 amount) external returns (bool);

    /**
     * @dev Moves `amount` tokens from `sender` to `recipient` using the
     * allowance mechanism. `amount` is then deducted from the caller's
     * allowance.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(
        address sender,
        address recipient,
        uint256 amount
    ) external returns (bool);

    /**
     * @dev Emitted when `value` tokens are moved from one account (`from`) to
     * another (`to`).
     *
     * Note that `value` may be zero.
     */
    event Transfer(address indexed from, address indexed to, uint256 value);

    /**
     * @dev Emitted when the allowance of a `spender` for an `owner` is set by
     * a call to {approve}. `value` is the new allowance.
     */
    event Approval(
        address indexed owner,
        address indexed spender,
        uint256 value
    );
}

contract UCROStaking is Ownable, ReentrancyGuard{
    using SafeMath for uint256;
    
    IERC20 stakingToken;
    address public teamWallet;
    uint256 constant public SECONDS_PER_DAY = 86400;
    uint256 constant public DAYS_PER_YEAR = 365;
    uint256 private _totalStaked = 0;// total staked amount
    uint256 public rewardRate1= 45; // annually percent
    uint256 public rewardRate2 = 23; // annually percent
    uint256 public lockDuration = 3600* 24 * 7 ; // 1 week
    uint256 public minStaking = 100 * 10 ** 18; // min staking amount
    uint256 public secondRateDuration; // min staking amount
    uint256[] public bounusRate = [200,325,700];// bonus rate
    uint256[] public stakingDurations = [60* SECONDS_PER_DAY,90* SECONDS_PER_DAY,180* SECONDS_PER_DAY]; // staking duration

    mapping(address => Stake[]) public stakes;
    mapping(address => uint256) private balances;
    mapping(address => uint256[]) public claimedAmount;

    struct Stake {
        uint256 amount;
        uint256 time;
        uint256 durationId;
        uint256 claimed;
        bool isUnstaked;
    }

    //events
    event Staked(address indexed user, uint256 amount, uint256 time);
    event Claimed(address indexed user, uint256 amount, uint256 time);
    event Unstaked(address indexed user, uint256 amount, uint256 time);

    constructor(address _stakingToken, address _teamWallet) {
        stakingToken = IERC20(_stakingToken);
        teamWallet = _teamWallet;
        secondRateDuration = block.timestamp + 180 * SECONDS_PER_DAY;
    }

    receive() external payable {}

    function stakedByUser(address account) public view returns (uint256) {
        return balances[account];
    }

    function setMinStaking(uint256 _minStaking) public onlyOwner {
        require(_minStaking > 0, "Cannot be 0");
        minStaking = _minStaking;
    }

    function setLockDuration(uint256 _lockDuration) public onlyOwner {
        require(_lockDuration > 0, "Cannot be 0");
        lockDuration = _lockDuration;
    }


    function setTeamWallet(address _teamWallet) public onlyOwner {
        require(_teamWallet != address(0), "Cannot be 0");
        teamWallet = _teamWallet;
    }

    function setRewardRate1(uint256 _rewardRate1) public onlyOwner {
        require(_rewardRate1 > 0, "Cannot be 0");
        rewardRate1 = _rewardRate1;
    }

    function setRewardRate2(uint256 _rewardRate2) public onlyOwner {
        require(_rewardRate2 > 0, "Cannot be 0");
        rewardRate2 = _rewardRate2;
    }

    function setBonusRate(uint256[] calldata _bonusRate) public onlyOwner {
        require(_bonusRate.length == 3, "Length is not correct");
        bounusRate = _bonusRate;
    }

     function setStakingDuration(uint256[] calldata _stakingDuration) public onlyOwner {
        require(_stakingDuration.length == 3, "Length is not correct");
        stakingDurations = _stakingDuration;
    }

    function setStakingToken(address _stakingToken) public onlyOwner {
        stakingToken = IERC20(_stakingToken);
    }

    function totalStaked() public view returns (uint256) {
        return _totalStaked;
    }

    function getUserStakes(address user) public view returns (Stake[] memory){
        Stake[] memory _stakes = stakes[user];
        return _stakes;
    }

    function stake(uint256 _amount , uint256 _durationId) public nonReentrant {
        require(_amount >= minStaking, "Cannot stake. Min staking amount");
        require(stakingDurations[_durationId] > 0, "Staking Duration wrong");

        //total staked amount
        _totalStaked = _totalStaked.add(_amount);
        balances[msg.sender] = balances[msg.sender].add(_amount);
        //transfer staked token to contract
        stakingToken.transferFrom(msg.sender, address(this), _amount);
        //save stake data
        stakes[msg.sender].push(Stake(_amount , block.timestamp, _durationId , 0 , false));
        //emit
        emit Staked(msg.sender, _amount, block.timestamp);
    }


    function claim(uint256 _stakedId) public nonReentrant {
        require(stakes[msg.sender].length > _stakedId, "Wrong Staking id.");
        require(!stakes[msg.sender][_stakedId].isUnstaked, "It Was Unstaked");
        require(stakes[msg.sender][_stakedId].time + stakingDurations[stakes[msg.sender][_stakedId].durationId] < block.timestamp, "Can't claim yet. Lock time");
        
        Stake memory _stake = stakes[msg.sender][_stakedId];
        uint256 _claim = 0;
        //second reward rate
        if(block.timestamp > secondRateDuration){
            _claim = _stake.amount * ((rewardRate1.div(DAYS_PER_YEAR * 100 * SECONDS_PER_DAY)) * (secondRateDuration - _stake.time) +  (rewardRate2.div(DAYS_PER_YEAR * 100 * SECONDS_PER_DAY)) * (block.timestamp - secondRateDuration));
        } else{
            _claim = _stake.amount * (rewardRate1.div(DAYS_PER_YEAR * 100 * SECONDS_PER_DAY)) * (block.timestamp - _stake.time);
        }
        uint256 amount = _claim - stakes[msg.sender][_stakedId].claimed;
        stakingToken.transfer(msg.sender, amount);
        stakes[msg.sender][_stakedId].claimed = _claim;
        emit Claimed(msg.sender, amount, block.timestamp);
    }


    function batchClaims(uint256[] calldata _stakedIds) public nonReentrant {
        for(uint i = 0; i < _stakedIds.length; i++){
            claim(_stakedIds[i]);
        }
    }

    function unStake(uint256 _stakedId) public nonReentrant {
        require(stakes[msg.sender].length > _stakedId, "Wrong Staking id.");
        require(stakes[msg.sender][_stakedId].time + lockDuration < block.timestamp, "Can't claim yet. Lock time");
        Stake memory _stake = stakes[msg.sender][_stakedId];
        uint256 _amount = 0;

        //unstake before staking period
        if((_stake.time + stakingDurations[_stake.durationId]) > block.timestamp){
            _amount = 90 * _stake.amount.div(100);
            uint256 _penaltyAmount = _stake.amount - _amount;
            stakingToken.transfer(msg.sender, _amount);
            stakingToken.transfer(teamWallet, _penaltyAmount);
        } else{
            //unstake after staking period

            //unclaimed amount
            if(block.timestamp > secondRateDuration){
                _amount = _stake.amount * ((rewardRate1.div(DAYS_PER_YEAR * 100 * SECONDS_PER_DAY)) * (secondRateDuration - _stake.time) +  (rewardRate2.div(DAYS_PER_YEAR * 100 * SECONDS_PER_DAY)) * (block.timestamp - secondRateDuration));
            } else{
                _amount = _stake.amount * (rewardRate1.div(DAYS_PER_YEAR * 100 * SECONDS_PER_DAY)) * (block.timestamp - _stake.time);
            }
            //unstake amount + bounus amount
            _amount += _stake.amount * (1 + bounusRate[_stake.durationId].div(10000));
            uint256 amount = _amount - _stake.claimed;
            stakingToken.transfer(msg.sender, amount);
        }

        stakes[msg.sender][_stakedId].claimed = _amount;
        stakes[msg.sender][_stakedId].isUnstaked = true;
        emit Unstaked(msg.sender, _amount, block.timestamp);
    }


    function batchUnStakes(uint256[] calldata _stakedIds) public nonReentrant {
        for(uint i = 0; i < _stakedIds.length; i++){
            unStake(_stakedIds[i]);
        }
    }

    function withdrawTokens(uint256 _amount) public onlyOwner {
        require(_amount > 0 , "amount is wrong");
        stakingToken.transfer(msg.sender, _amount);
    }

}