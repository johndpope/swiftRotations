//: Playground - noun: a place where people can play

import UIKit

// Euler angles are assumed to be XYZ Tait–Bryan angles
// Occasionally the ZXZ Proper Euler angles are used

// Test requires at least one nonzero quaternion value
// [x, y, z, xd, yd, zd, qw, qx, qy, qz, p, q, r]

// Constants
let g = 9.8
let m = 1.6
let Va = 3
let state = [0, 0, 5, 0, 0, 0, 0, 0, 0, 0.01, 0, 0, 0]
let force = 0
let moment = [0, 0, 0]
let L = 0.3
let Ixx = 0.01
let Iyy = 0.01
let Izz = 0.03
let I = [[Ixx, 0, 0],
         [0, Iyy, 0],
         [0, 0, Izz]]

// State
let x = state[0],
    y = state[1],
    z = state[2],
    xd = state[3],
    yd = state[4],
    zd = state[5],
    qW = state[6],
    qX = state[7],
    qY = state[8],
    qZ = state[9],
    p = state[10],
    q = state[11],
    r = state[12]

// TODO: Euler angles
// X-Y-Z, Z-X-Z

    // Calculate position in world frame from Euler angle in world frame
    func eulerToWorldFrame(euler: [Double]) -> [Double] {
        let phi = euler[0], theta = euler[1], psi = euler[2]
        let x = asin(phi)
        let y = atan2(-theta/cos(phi), psi/cos(phi))
        let z = atan2(-phi/cos(phi), psi/cos(phi))
        return [x, y, z]
    }
    eulerToWorldFrame(euler: [0, 0, 0])

    // Calculate Euler angle in world frame from position in world frame
    func worldFrameToEuler(position: [Double]) -> [Double] {
        let x = position[0], y = position[1], z = position[2]
        let phi: Double = 0, theta: Double = 0, psi: Double = 0
        let euler = [phi, theta, psi]
        return euler
    }
    worldFrameToEuler(position: [0, 0, 0])

    // Calculate the differential of an Euler angle with a given time step and rotational velocity
func differentiateEuler(euler: [Double], rotationalVelocity: [Double]) -> [Double] {
        let phi = euler[0], theta = euler[1], psi = euler[2]
        return [phi, theta, psi]
    }
    differentiateEuler(euler: [0, 0, 0], rotationalVelocity: [0, 0, 0])

// TODO: Quaternion angles
// Q1-Q2-Q3-Q4

    // Calculate position in world frame from quaternion rotation in world frame
    func quaternionToWorldFrame(quaternion: [Double]) -> [Double] {
        let q1 = quaternion[0], q2 = quaternion[1], q3 = quaternion[2], q4 = quaternion[3]
        let position: [Double] = [0, 0, 0]
        return position
    }
    quaternionToWorldFrame(quaternion: [0, 0, 0, 0])

    // Calculate Quaternion rotation in world frame from position in world frame
    func worldFrameToQuaternion(position: [Double]) -> [Double] {
        let x = position[0], y = position[1], z = position[2]
        let q1: Double = 0, q2: Double = 0, q3: Double = 0, q4: Double = 0
        let quaternion = [q1, q2, q3, q4]
        return quaternion
    }
    worldFrameToQuaternion(position: [0, 0, 0])

// TODO: Conversions between rotation representations

    // Quaternion to Euler
    func quaternionToEuler(quaternion: [Double]) -> [Double] {
        let q1 = quaternion[0], q2 = quaternion[1], q3 = quaternion[2], q4 = quaternion[3]
        // Normalize
        // Convert
        let phi: Double = 0, theta: Double = 0, psi: Double = 0
        let euler = [phi, theta, psi]
        return euler
    }
    quaternionToEuler(quaternion: [0, 0, 0, 0])

    // Euler to Quaternion
    func eulerToQuaternion(euler: [Double]) -> [Double] {
        let phi = euler[0], theta = euler[1], psi = euler[2]
        let q1: Double = 0, q2: Double = 0, q3: Double = 0, q4: Double = 0
        let quaternion = [q1, q2, q3, q4]
        return quaternion
    }
    eulerToQuaternion(euler: [0, 0, 0])
