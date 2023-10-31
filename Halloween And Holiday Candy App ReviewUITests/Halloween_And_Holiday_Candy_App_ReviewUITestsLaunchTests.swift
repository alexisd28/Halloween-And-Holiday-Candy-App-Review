//
//  Halloween_And_Holiday_Candy_App_ReviewUITestsLaunchTests.swift
//  Halloween And Holiday Candy App ReviewUITests
//
//  Created by Yuki Decker on 10/31/23.
//

import XCTest

final class Halloween_And_Holiday_Candy_App_ReviewUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
