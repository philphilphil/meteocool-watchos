import Foundation
import SwiftUI

let CMAP_NWS = [Color(red: 0.0, green: 0.0, blue: 0.0, opacity: 0.0),Color(red: 0.0, green: 0.0, blue: 0.0, opacity: 0.0),Color(red: 0.0, green: 0.0, blue: 0.0, opacity: 0.0),Color(red: 0.0, green: 0.0, blue: 0.0, opacity: 0.0),Color(red: 0.0, green: 0.0, blue: 0.0, opacity: 0.0),Color(red: 0.0, green: 0.0, blue: 0.0, opacity: 0.0),Color(red: 0.0, green: 0.0, blue: 0.0, opacity: 0.0),Color(red: 0.0, green: 0.0, blue: 0.0, opacity: 0.0),Color(red: 0.0, green: 0.0, blue: 0.0, opacity: 0.0),Color(red: 0.0, green: 0.0, blue: 0.0, opacity: 0.0),Color(red: 0.0, green: 0.0, blue: 0.0, opacity: 0.0),Color(red: 0.0, green: 0.0, blue: 0.0, opacity: 0.0),Color(red: 0.0, green: 0.0, blue: 0.0, opacity: 0.0),Color(red: 0.0, green: 0.0, blue: 0.0, opacity: 0.0),Color(red: 0.0, green: 0.0, blue: 0.0, opacity: 0.0),Color(red: 0.0, green: 0.0, blue: 0.0, opacity: 0.0),Color(red: 0.0, green: 0.0, blue: 0.0, opacity: 0.0),Color(red: 0.0, green: 0.0, blue: 0.0, opacity: 0.0),Color(red: 0.0, green: 0.0, blue: 0.0, opacity: 0.0),Color(red: 0.0, green: 0.0, blue: 0.0, opacity: 0.0),Color(red: 0.0, green: 0.0, blue: 0.0, opacity: 0.0),Color(red: 0.0, green: 0.0, blue: 0.0, opacity: 0.0),Color(red: 0.0, green: 0.0, blue: 0.0, opacity: 0.0),Color(red: 0.0, green: 0.0, blue: 0.0, opacity: 0.0),Color(red: 0.0, green: 0.0, blue: 0.0, opacity: 0.0),Color(red: 0.0, green: 0.0, blue: 0.0, opacity: 0.0),Color(red: 0.0, green: 0.0, blue: 0.0, opacity: 0.0),Color(red: 0.0, green: 0.0, blue: 0.0, opacity: 0.0),Color(red: 0.0, green: 0.0, blue: 0.0, opacity: 0.0),Color(red: 0.0, green: 0.0, blue: 0.0, opacity: 0.0),Color(red: 0.0, green: 0.0, blue: 0.0, opacity: 0.0),Color(red: 0.0, green: 0.0, blue: 0.0, opacity: 0.0),Color(red: 0.0, green: 0.0, blue: 0.0, opacity: 0.0),Color(red: 0.0, green: 0.0, blue: 0.0, opacity: 0.0),Color(red: 0.0, green: 0.0, blue: 0.0, opacity: 0.0),Color(red: 0.0, green: 0.0, blue: 0.0, opacity: 0.0),Color(red: 0.0, green: 0.0, blue: 0.0, opacity: 0.0),Color(red: 0.0, green: 0.0, blue: 0.0, opacity: 0.0),Color(red: 0.0, green: 0.0, blue: 0.0, opacity: 0.0),Color(red: 0.0, green: 0.0, blue: 0.0, opacity: 0.0),Color(red: 0.0, green: 0.0, blue: 0.0, opacity: 0.0),Color(red: 0.0, green: 0.0, blue: 0.0, opacity: 0.0),Color(red: 0.0, green: 0.0, blue: 0.0, opacity: 0.0),Color(red: 0.0, green: 0.0, blue: 0.0, opacity: 0.0),Color(red: 0.0, green: 0.0, blue: 0.0, opacity: 0.0),Color(red: 0.0, green: 0.0, blue: 0.0, opacity: 0.0),Color(red: 0.0, green: 0.0, blue: 0.0, opacity: 0.0),Color(red: 0.0, green: 0.0, blue: 0.0, opacity: 0.0),Color(red: 0.0, green: 0.0, blue: 0.0, opacity: 0.0),Color(red: 0.0, green: 0.0, blue: 0.0, opacity: 0.0),Color(red: 0.0, green: 0.0, blue: 0.0, opacity: 0.0),Color(red: 0.0, green: 0.0, blue: 0.0, opacity: 0.0),Color(red: 0.0, green: 0.0, blue: 0.0, opacity: 0.0),Color(red: 0.0, green: 0.0, blue: 0.0, opacity: 0.0),Color(red: 0.0, green: 0.0, blue: 0.0, opacity: 0.0),Color(red: 0.0, green: 0.0, blue: 0.0, opacity: 0.0),Color(red: 0.0, green: 0.0, blue: 0.0, opacity: 0.0),Color(red: 0.0, green: 0.0, blue: 0.0, opacity: 0.0),Color(red: 0.0, green: 0.0, blue: 0.0, opacity: 0.0),Color(red: 0.0, green: 0.0, blue: 0.0, opacity: 0.0),Color(red: 0.0, green: 0.0, blue: 0.0, opacity: 0.0),Color(red: 0.0, green: 0.0, blue: 0.0, opacity: 0.0),Color(red: 0.58203125, green: 0.5625, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.58984375, green: 0.57421875, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.625, green: 0.609375, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.63671875, green: 0.625, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.6640625, green: 0.65625, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.671875, green: 0.671875, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.69140625, green: 0.69140625, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.7109375, green: 0.71875, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.734375, green: 0.73828125, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.75390625, green: 0.76171875, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.75390625, green: 0.76171875, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.7734375, green: 0.7890625, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.796875, green: 0.80859375, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.80859375, green: 0.81640625, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.78125, green: 0.796875, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.7734375, green: 0.78125, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.74609375, green: 0.76171875, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.734375, green: 0.75390625, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.71875, green: 0.73828125, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.68359375, green: 0.70703125, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.671875, green: 0.69921875, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.6640625, green: 0.68359375, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.63671875, green: 0.6640625, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.625, green: 0.65625, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.6015625, green: 0.62890625, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.58984375, green: 0.625, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.57421875, green: 0.609375, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.57421875, green: 0.6015625, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.546875, green: 0.58203125, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.51171875, green: 0.5546875, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.5, green: 0.546875, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.484375, green: 0.53515625, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.453125, green: 0.5078125, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.4375, green: 0.5, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.3828125, green: 0.45703125, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.3671875, green: 0.4453125, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.3671875, green: 0.4453125, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.3359375, green: 0.42578125, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.3203125, green: 0.41015625, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.29296875, green: 0.390625, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.2734375, green: 0.375, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.2578125, green: 0.36328125, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.265625, green: 0.40234375, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.28125, green: 0.4296875, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.30078125, green: 0.484375, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.30859375, green: 0.51171875, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.3125, green: 0.5390625, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.3359375, green: 0.59765625, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.34765625, green: 0.6171875, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.36328125, green: 0.671875, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.375, green: 0.69921875, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.3828125, green: 0.7265625, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.40234375, green: 0.78125, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.41015625, green: 0.80859375, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.40234375, green: 0.8359375, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.375, green: 0.8359375, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.34765625, green: 0.8359375, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.29296875, green: 0.8359375, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.2578125, green: 0.8359375, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.203125, green: 0.8359375, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.06640625, green: 0.828125, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.06640625, green: 0.81640625, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.05859375, green: 0.78125, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.05859375, green: 0.76171875, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.05859375, green: 0.734375, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.05859375, green: 0.7109375, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.0546875, green: 0.69921875, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.0546875, green: 0.6640625, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.046875, green: 0.64453125, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.046875, green: 0.6171875, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.046875, green: 0.59765625, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.046875, green: 0.58203125, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.0390625, green: 0.546875, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.0390625, green: 0.52734375, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.0390625, green: 0.5, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.0390625, green: 0.484375, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.0390625, green: 0.46484375, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.03125, green: 0.4296875, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.03125, green: 0.41796875, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.03125, green: 0.3828125, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.03125, green: 0.36328125, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.109375, green: 0.40234375, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.2734375, green: 0.484375, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.35546875, green: 0.52734375, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.51171875, green: 0.609375, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.58984375, green: 0.65625, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.671875, green: 0.69140625, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.8359375, green: 0.7734375, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.91015625, green: 0.81640625, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.99609375, green: 0.84375, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.99609375, green: 0.82421875, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.99609375, green: 0.78125, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.99609375, green: 0.7265625, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.99609375, green: 0.70703125, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.99609375, green: 0.671875, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.99609375, green: 0.65234375, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.99609375, green: 0.6171875, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.99609375, green: 0.57421875, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.99609375, green: 0.53515625, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.99609375, green: 0.49609375, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.99609375, green: 0.0, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.96484375, green: 0.0, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.91015625, green: 0.0, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.8828125, green: 0.0, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.828125, green: 0.0, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.80078125, green: 0.0, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.7734375, green: 0.0, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.71875, green: 0.0, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.69140625, green: 0.0, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.63671875, green: 0.0, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.6015625, green: 0.0, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.57421875, green: 0.0, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.51953125, green: 0.0, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.4921875, green: 0.0, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.4375, green: 0.0, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.99609375, green: 0.99609375, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.99609375, green: 0.953125, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.99609375, green: 0.87109375, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.99609375, green: 0.828125, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.99609375, green: 0.73828125, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.99609375, green: 0.69921875, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.99609375, green: 0.65625, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.99609375, green: 0.56640625, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.99609375, green: 0.45703125, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.97265625, green: 0.375, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.9609375, green: 0.3359375, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.9453125, green: 0.29296875, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.92578125, green: 0.2109375, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.91015625, green: 0.1640625, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.890625, green: 0.0859375, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.87890625, green: 0.0390625, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.69140625, green: 0.0, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.63671875, green: 0.0, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.6015625, green: 0.0, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.52734375, green: 0.0, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.5078125, green: 0.0, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.47265625, green: 0.0, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.41015625, green: 0.0, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.3828125, green: 0.0, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.3828125, green: 0.0, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.3828125, green: 0.0, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.3828125, green: 0.0, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.3828125, green: 0.0, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.3828125, green: 0.0, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.3828125, green: 0.0, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.3828125, green: 0.0, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.3828125, green: 0.0, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.3828125, green: 0.0, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.3828125, green: 0.0, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.3828125, green: 0.0, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.3828125, green: 0.0, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.3828125, green: 0.0, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.3828125, green: 0.0, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.3828125, green: 0.0, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.3828125, green: 0.0, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.3828125, green: 0.0, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.3828125, green: 0.0, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.3828125, green: 0.0, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.3828125, green: 0.0, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.3828125, green: 0.0, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.3828125, green: 0.0, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.3828125, green: 0.0, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.3828125, green: 0.0, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.3828125, green: 0.0, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.3828125, green: 0.0, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.3828125, green: 0.0, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.3828125, green: 0.0, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.3828125, green: 0.0, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.3828125, green: 0.0, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.3828125, green: 0.0, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.3828125, green: 0.0, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.3828125, green: 0.0, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.3828125, green: 0.0, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.3828125, green: 0.0, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.3828125, green: 0.0, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.3828125, green: 0.0, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.3828125, green: 0.0, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.3828125, green: 0.0, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.3828125, green: 0.0, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.3828125, green: 0.0, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.3828125, green: 0.0, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.3828125, green: 0.0, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.3828125, green: 0.0, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.3828125, green: 0.0, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.3828125, green: 0.0, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.3828125, green: 0.0, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.3828125, green: 0.0, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.3828125, green: 0.0, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.3828125, green: 0.0, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.3828125, green: 0.0, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.3828125, green: 0.0, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.3828125, green: 0.0, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.3828125, green: 0.0, blue: 0.99609375, opacity: 0.99609375),Color(red: 0.3828125, green: 0.0, blue: 0.99609375, opacity: 0.99609375)]
