{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.AppsCalendar.Calendar.Calendars.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates metadata for a calendar. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @calendar.calendars.patch@.
module Gogol.AppsCalendar.Calendar.Calendars.Patch
    (
    -- * Resource
      CalendarCalendarsPatchResource

    -- ** Constructing a Request
    , newCalendarCalendarsPatch
    , CalendarCalendarsPatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AppsCalendar.Types

-- | A resource alias for @calendar.calendars.patch@ method which the
-- 'CalendarCalendarsPatch' request conforms to.
type CalendarCalendarsPatchResource =
     "calendar" Core.:>
       "v3" Core.:>
         "calendars" Core.:>
           Core.Capture "calendarId" Core.Text Core.:>
             Core.QueryParam "alt" Core.AltJSON Core.:>
               Core.ReqBody '[Core.JSON] Calendar Core.:>
                 Core.Patch '[Core.JSON] Calendar

-- | Updates metadata for a calendar. This method supports patch semantics.
--
-- /See:/ 'newCalendarCalendarsPatch' smart constructor.
data CalendarCalendarsPatch = CalendarCalendarsPatch
    {
      -- | Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the \"primary\" keyword.
      calendarId :: Core.Text
      -- | Multipart request metadata.
    , payload :: Calendar
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CalendarCalendarsPatch' with the minimum fields required to make a request.
newCalendarCalendarsPatch 
    ::  Core.Text
       -- ^  Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the \"primary\" keyword. See 'calendarId'.
    -> Calendar
       -- ^  Multipart request metadata. See 'payload'.
    -> CalendarCalendarsPatch
newCalendarCalendarsPatch calendarId payload =
  CalendarCalendarsPatch {calendarId = calendarId, payload = payload}

instance Core.GoogleRequest CalendarCalendarsPatch
         where
        type Rs CalendarCalendarsPatch = Calendar
        type Scopes CalendarCalendarsPatch =
             '["https://www.googleapis.com/auth/calendar"]
        requestClient CalendarCalendarsPatch{..}
          = go calendarId (Core.Just Core.AltJSON) payload
              appsCalendarService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy CalendarCalendarsPatchResource)
                      Core.mempty
