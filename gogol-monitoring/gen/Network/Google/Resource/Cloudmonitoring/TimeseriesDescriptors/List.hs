{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Cloudmonitoring.TimeseriesDescriptors.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List the descriptors of the time series that match the metric and labels
-- values and that have data points in the interval. Large responses are
-- paginated; use the nextPageToken returned in the response to request
-- subsequent pages of results by setting the pageToken query parameter to
-- the value of the nextPageToken.
--
-- /See:/ <https://cloud.google.com/monitoring/v2beta2/ Cloud Monitoring API Reference> for @CloudmonitoringTimeseriesDescriptorsList@.
module Cloudmonitoring.TimeseriesDescriptors.List
    (
    -- * REST Resource
      TimeseriesDescriptorsListAPI

    -- * Creating a Request
    , timeseriesDescriptorsList
    , TimeseriesDescriptorsList

    -- * Request Lenses
    , tWindow
    , tQuotaUser
    , tPrettyPrint
    , tProject
    , tUserIp
    , tCount
    , tAggregator
    , tTimespan
    , tMetric
    , tKey
    , tOldest
    , tLabels
    , tPageToken
    , tYoungest
    , tOauthToken
    , tFields
    , tAlt
    ) where

import           Network.Google.Monitoring.Types
import           Network.Google.Prelude

-- | A resource alias for @CloudmonitoringTimeseriesDescriptorsList@ which the
-- 'TimeseriesDescriptorsList' request conforms to.
type TimeseriesDescriptorsListAPI =
     Capture "project" Text :>
       "timeseriesDescriptors" :>
         Capture "metric" Text :>
           QueryParam "window" Text :>
             QueryParam "count" Int32 :>
               QueryParam "aggregator" Text :>
                 QueryParam "timespan" Text :>
                   QueryParam "oldest" Text :>
                     QueryParams "labels" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "youngest" Text :>
                           Get '[JSON] ListTimeseriesDescriptorsResponse

-- | List the descriptors of the time series that match the metric and labels
-- values and that have data points in the interval. Large responses are
-- paginated; use the nextPageToken returned in the response to request
-- subsequent pages of results by setting the pageToken query parameter to
-- the value of the nextPageToken.
--
-- /See:/ 'timeseriesDescriptorsList' smart constructor.
data TimeseriesDescriptorsList = TimeseriesDescriptorsList
    { _tWindow      :: !(Maybe Text)
    , _tQuotaUser   :: !(Maybe Text)
    , _tPrettyPrint :: !Bool
    , _tProject     :: !Text
    , _tUserIp      :: !(Maybe Text)
    , _tCount       :: !Int32
    , _tAggregator  :: !(Maybe Text)
    , _tTimespan    :: !(Maybe Text)
    , _tMetric      :: !Text
    , _tKey         :: !(Maybe Text)
    , _tOldest      :: !(Maybe Text)
    , _tLabels      :: !(Maybe Text)
    , _tPageToken   :: !(Maybe Text)
    , _tYoungest    :: !Text
    , _tOauthToken  :: !(Maybe Text)
    , _tFields      :: !(Maybe Text)
    , _tAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TimeseriesDescriptorsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tWindow'
--
-- * 'tQuotaUser'
--
-- * 'tPrettyPrint'
--
-- * 'tProject'
--
-- * 'tUserIp'
--
-- * 'tCount'
--
-- * 'tAggregator'
--
-- * 'tTimespan'
--
-- * 'tMetric'
--
-- * 'tKey'
--
-- * 'tOldest'
--
-- * 'tLabels'
--
-- * 'tPageToken'
--
-- * 'tYoungest'
--
-- * 'tOauthToken'
--
-- * 'tFields'
--
-- * 'tAlt'
timeseriesDescriptorsList
    :: Text -- ^ 'project'
    -> Text -- ^ 'metric'
    -> Text -- ^ 'youngest'
    -> TimeseriesDescriptorsList
timeseriesDescriptorsList pTProject_ pTMetric_ pTYoungest_ =
    TimeseriesDescriptorsList
    { _tWindow = Nothing
    , _tQuotaUser = Nothing
    , _tPrettyPrint = True
    , _tProject = pTProject_
    , _tUserIp = Nothing
    , _tCount = 100
    , _tAggregator = Nothing
    , _tTimespan = Nothing
    , _tMetric = pTMetric_
    , _tKey = Nothing
    , _tOldest = Nothing
    , _tLabels = Nothing
    , _tPageToken = Nothing
    , _tYoungest = pTYoungest_
    , _tOauthToken = Nothing
    , _tFields = Nothing
    , _tAlt = "json"
    }

-- | The sampling window. At most one data point will be returned for each
-- window in the requested time interval. This parameter is only valid for
-- non-cumulative metric types. Units: - m: minute - h: hour - d: day - w:
-- week Examples: 3m, 4w. Only one unit is allowed, for example: 2w3d is
-- not allowed; you should use 17d instead.
tWindow :: Lens' TimeseriesDescriptorsList' (Maybe Text)
tWindow = lens _tWindow (\ s a -> s{_tWindow = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tQuotaUser :: Lens' TimeseriesDescriptorsList' (Maybe Text)
tQuotaUser
  = lens _tQuotaUser (\ s a -> s{_tQuotaUser = a})

-- | Returns response with indentations and line breaks.
tPrettyPrint :: Lens' TimeseriesDescriptorsList' Bool
tPrettyPrint
  = lens _tPrettyPrint (\ s a -> s{_tPrettyPrint = a})

-- | The project ID to which this time series belongs. The value can be the
-- numeric project ID or string-based project name.
tProject :: Lens' TimeseriesDescriptorsList' Text
tProject = lens _tProject (\ s a -> s{_tProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tUserIp :: Lens' TimeseriesDescriptorsList' (Maybe Text)
tUserIp = lens _tUserIp (\ s a -> s{_tUserIp = a})

-- | Maximum number of time series descriptors per page. Used for pagination.
-- If not specified, count = 100.
tCount :: Lens' TimeseriesDescriptorsList' Int32
tCount = lens _tCount (\ s a -> s{_tCount = a})

-- | The aggregation function that will reduce the data points in each window
-- to a single point. This parameter is only valid for non-cumulative
-- metrics with a value type of INT64 or DOUBLE.
tAggregator :: Lens' TimeseriesDescriptorsList' (Maybe Text)
tAggregator
  = lens _tAggregator (\ s a -> s{_tAggregator = a})

-- | Length of the time interval to query, which is an alternative way to
-- declare the interval: (youngest - timespan, youngest]. The timespan and
-- oldest parameters should not be used together. Units: - s: second - m:
-- minute - h: hour - d: day - w: week Examples: 2s, 3m, 4w. Only one unit
-- is allowed, for example: 2w3d is not allowed; you should use 17d
-- instead. If neither oldest nor timespan is specified, the default time
-- interval will be (youngest - 4 hours, youngest].
tTimespan :: Lens' TimeseriesDescriptorsList' (Maybe Text)
tTimespan
  = lens _tTimespan (\ s a -> s{_tTimespan = a})

-- | Metric names are protocol-free URLs as listed in the Supported Metrics
-- page. For example,
-- compute.googleapis.com\/instance\/disk\/read_ops_count.
tMetric :: Lens' TimeseriesDescriptorsList' Text
tMetric = lens _tMetric (\ s a -> s{_tMetric = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tKey :: Lens' TimeseriesDescriptorsList' (Maybe Text)
tKey = lens _tKey (\ s a -> s{_tKey = a})

-- | Start of the time interval (exclusive), which is expressed as an RFC
-- 3339 timestamp. If neither oldest nor timespan is specified, the default
-- time interval will be (youngest - 4 hours, youngest]
tOldest :: Lens' TimeseriesDescriptorsList' (Maybe Text)
tOldest = lens _tOldest (\ s a -> s{_tOldest = a})

-- | A collection of labels for the matching time series, which are
-- represented as: - key==value: key equals the value - key=~value: key
-- regex matches the value - key!=value: key does not equal the value -
-- key!~value: key regex does not match the value For example, to list all
-- of the time series descriptors for the region us-central1, you could
-- specify: label=cloud.googleapis.com%2Flocation=~us-central1.*
tLabels :: Lens' TimeseriesDescriptorsList' (Maybe Text)
tLabels = lens _tLabels (\ s a -> s{_tLabels = a})

-- | The pagination token, which is used to page through large result sets.
-- Set this value to the value of the nextPageToken to retrieve the next
-- page of results.
tPageToken :: Lens' TimeseriesDescriptorsList' (Maybe Text)
tPageToken
  = lens _tPageToken (\ s a -> s{_tPageToken = a})

-- | End of the time interval (inclusive), which is expressed as an RFC 3339
-- timestamp.
tYoungest :: Lens' TimeseriesDescriptorsList' Text
tYoungest
  = lens _tYoungest (\ s a -> s{_tYoungest = a})

-- | OAuth 2.0 token for the current user.
tOauthToken :: Lens' TimeseriesDescriptorsList' (Maybe Text)
tOauthToken
  = lens _tOauthToken (\ s a -> s{_tOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
tFields :: Lens' TimeseriesDescriptorsList' (Maybe Text)
tFields = lens _tFields (\ s a -> s{_tFields = a})

-- | Data format for the response.
tAlt :: Lens' TimeseriesDescriptorsList' Text
tAlt = lens _tAlt (\ s a -> s{_tAlt = a})

instance GoogleRequest TimeseriesDescriptorsList'
         where
        type Rs TimeseriesDescriptorsList' =
             ListTimeseriesDescriptorsResponse
        request = requestWithRoute defReq monitoringURL
        requestWithRoute r u TimeseriesDescriptorsList{..}
          = go _tWindow _tQuotaUser _tPrettyPrint _tProject
              _tUserIp
              (Just _tCount)
              _tAggregator
              _tTimespan
              _tMetric
              _tKey
              _tOldest
              _tLabels
              _tPageToken
              (Just _tYoungest)
              _tOauthToken
              _tFields
              _tAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TimeseriesDescriptorsListAPI)
                      r
                      u