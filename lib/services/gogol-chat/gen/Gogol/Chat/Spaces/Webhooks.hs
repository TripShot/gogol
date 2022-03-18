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
-- Module      : Gogol.Chat.Spaces.Webhooks
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Legacy path for creating message. Calling these will result in a BadRequest response.
--
-- /See:/ <https://developers.google.com/hangouts/chat Google Chat API Reference> for @chat.spaces.webhooks@.
module Gogol.Chat.Spaces.Webhooks
    (
    -- * Resource
      ChatSpacesWebhooksResource

    -- ** Constructing a Request
    , newChatSpacesWebhooks
    , ChatSpacesWebhooks
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Chat.Types

-- | A resource alias for @chat.spaces.webhooks@ method which the
-- 'ChatSpacesWebhooks' request conforms to.
type ChatSpacesWebhooksResource =
     "v1" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "webhooks" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "requestId" Core.Text Core.:>
                   Core.QueryParam "threadKey" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.ReqBody '[Core.JSON] Message Core.:>
                             Core.Post '[Core.JSON] Message

-- | Legacy path for creating message. Calling these will result in a BadRequest response.
--
-- /See:/ 'newChatSpacesWebhooks' smart constructor.
data ChatSpacesWebhooks = ChatSpacesWebhooks
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Space resource name, in the form \"spaces\/*\". Example: spaces\/AAAAAAAAAAA
    , parent :: Core.Text
      -- | Multipart request metadata.
    , payload :: Message
      -- | Optional. A unique request ID for this message. Specifying an existing request ID returns the message created with that ID instead of creating a new message.
    , requestId :: (Core.Maybe Core.Text)
      -- | Optional. Opaque thread identifier string that can be specified to group messages into a single thread. If this is the first message with a given thread identifier, a new thread is created. Subsequent messages with the same thread identifier will be posted into the same thread. This relieves bots and webhooks from having to store the Google Chat thread ID of a thread (created earlier by them) to post further updates to it. Has no effect if thread field, corresponding to an existing thread, is set in message.
    , threadKey :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChatSpacesWebhooks' with the minimum fields required to make a request.
newChatSpacesWebhooks 
    ::  Core.Text
       -- ^  Required. Space resource name, in the form \"spaces\/*\". Example: spaces\/AAAAAAAAAAA See 'parent'.
    -> Message
       -- ^  Multipart request metadata. See 'payload'.
    -> ChatSpacesWebhooks
newChatSpacesWebhooks parent payload =
  ChatSpacesWebhooks
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , parent = parent
    , payload = payload
    , requestId = Core.Nothing
    , threadKey = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ChatSpacesWebhooks where
        type Rs ChatSpacesWebhooks = Message
        type Scopes ChatSpacesWebhooks = '[]
        requestClient ChatSpacesWebhooks{..}
          = go parent xgafv accessToken callback requestId
              threadKey
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              chatService
          where go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy ChatSpacesWebhooksResource)
                      Core.mempty
