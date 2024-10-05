/**
 * 1603. Design Parking System
 * https://leetcode.com/problems/design-parking-system/
 */


class ParkingSystem {

    var slots: [Int] = [0, 0, 0]

    init(_ big: Int, _ medium: Int, _ small: Int) {
        self.slots = [big, medium, small]
    }

    func addCar(_ carType: Int) -> Bool {
        if slots[carType - 1] > 0 {
            slots[carType - 1] -= 1
            return true
        }
        return false
    }
}

/**
 * Your ParkingSystem object will be instantiated and called as such:
 * let obj = ParkingSystem(big, medium, small)
 * let ret_1: Bool = obj.addCar(carType)
 */