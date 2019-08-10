{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.WebSecurityScanner.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.WebSecurityScanner.Types
    (
    -- * Service Configuration
      webSecurityScannerService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * FindingTypeStats
    , FindingTypeStats
    , findingTypeStats
    , ftsFindingCount
    , ftsFindingType

    -- * ListFindingsResponse
    , ListFindingsResponse
    , listFindingsResponse
    , lfrNextPageToken
    , lfrFindings

    -- * StopScanRunRequest
    , StopScanRunRequest
    , stopScanRunRequest

    -- * ScanRunErrorTraceCode
    , ScanRunErrorTraceCode (..)

    -- * ScanConfigError
    , ScanConfigError
    , scanConfigError
    , sceFieldName
    , sceCode

    -- * Schedule
    , Schedule
    , schedule
    , sScheduleTime
    , sIntervalDurationDays

    -- * Finding
    , Finding
    , finding
    , fFinalURL
    , fHTTPMethod
    , fReProductionURL
    , fTrackingId
    , fBody
    , fXss
    , fVulnerableParameters
    , fOutdatedLibrary
    , fFuzzedURL
    , fName
    , fFindingType
    , fVulnerableHeaders
    , fViolatingResource
    , fForm
    , fFrameURL
    , fDescription

    -- * Empty
    , Empty
    , empty

    -- * ScanRunWarningTrace
    , ScanRunWarningTrace
    , scanRunWarningTrace
    , srwtCode

    -- * ListFindingTypeStatsResponse
    , ListFindingTypeStatsResponse
    , listFindingTypeStatsResponse
    , lftsrFindingTypeStats

    -- * GoogleAccount
    , GoogleAccount
    , googleAccount
    , gaUsername
    , gaPassword

    -- * Xss
    , Xss
    , xss
    , xStackTraces
    , xErrorMessage

    -- * Authentication
    , Authentication
    , authentication
    , aGoogleAccount
    , aCustomAccount

    -- * ListCrawledURLsResponse
    , ListCrawledURLsResponse
    , listCrawledURLsResponse
    , lcurNextPageToken
    , lcurCrawledURLs

    -- * VulnerableParameters
    , VulnerableParameters
    , vulnerableParameters
    , vpParameterNames

    -- * CrawledURL
    , CrawledURL
    , crawledURL
    , cuHTTPMethod
    , cuBody
    , cuURL

    -- * OutdatedLibrary
    , OutdatedLibrary
    , outdatedLibrary
    , olLearnMoreURLs
    , olVersion
    , olLibraryName

    -- * ListScanRunsResponse
    , ListScanRunsResponse
    , listScanRunsResponse
    , lsrrNextPageToken
    , lsrrScanRuns

    -- * Header
    , Header
    , header
    , hValue
    , hName

    -- * ScanRunErrorTrace
    , ScanRunErrorTrace
    , scanRunErrorTrace
    , sretMostCommonHTTPErrorCode
    , sretScanConfigError
    , sretCode

    -- * ListScanConfigsResponse
    , ListScanConfigsResponse
    , listScanConfigsResponse
    , lscrNextPageToken
    , lscrScanConfigs

    -- * StartScanRunRequest
    , StartScanRunRequest
    , startScanRunRequest

    -- * Xgafv
    , Xgafv (..)

    -- * CustomAccount
    , CustomAccount
    , customAccount
    , caLoginURL
    , caUsername
    , caPassword

    -- * ScanConfigUserAgent
    , ScanConfigUserAgent (..)

    -- * ScanConfig
    , ScanConfig
    , scanConfig
    , scLatestRun
    , scSchedule
    , scTargetPlatforms
    , scStartingURLs
    , scAuthentication
    , scMaxQps
    , scName
    , scExportToSecurityCommandCenter
    , scDisplayName
    , scUserAgent
    , scBlackListPatterns

    -- * ScanRunWarningTraceCode
    , ScanRunWarningTraceCode (..)

    -- * ScanConfigExportToSecurityCommandCenter
    , ScanConfigExportToSecurityCommandCenter (..)

    -- * ScanConfigErrorCode
    , ScanConfigErrorCode (..)

    -- * ScanRunResultState
    , ScanRunResultState (..)

    -- * VulnerableHeaders
    , VulnerableHeaders
    , vulnerableHeaders
    , vhMissingHeaders
    , vhHeaders

    -- * ViolatingResource
    , ViolatingResource
    , violatingResource
    , vrContentType
    , vrResourceURL

    -- * ScanRunExecutionState
    , ScanRunExecutionState (..)

    -- * Form
    , Form
    , form
    , fActionURI
    , fFields

    -- * ScanRun
    , ScanRun
    , scanRun
    , srStartTime
    , srHasVulnerabilities
    , srWarningTraces
    , srResultState
    , srProgressPercent
    , srURLsCrawledCount
    , srURLsTestedCount
    , srName
    , srEndTime
    , srExecutionState
    , srErrorTrace
    ) where

import           Network.Google.Prelude
import           Network.Google.WebSecurityScanner.Types.Product
import           Network.Google.WebSecurityScanner.Types.Sum

-- | Default request referring to version 'v1beta' of the Web Security Scanner API. This contains the host and root path used as a starting point for constructing service requests.
webSecurityScannerService :: ServiceConfig
webSecurityScannerService
  = defaultService
      (ServiceId "websecurityscanner:v1beta")
      "websecurityscanner.googleapis.com"

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy
