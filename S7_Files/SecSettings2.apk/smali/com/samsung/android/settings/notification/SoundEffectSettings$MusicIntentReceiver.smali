.class Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SoundEffectSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/SoundEffectSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MusicIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/SoundEffectSettings;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/notification/SoundEffectSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/notification/SoundEffectSettings;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/samsung/android/settings/notification/SoundEffectSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/notification/SoundEffectSettings;Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/notification/SoundEffectSettings;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;-><init>(Lcom/samsung/android/settings/notification/SoundEffectSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 168
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v8, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 170
    const-string/jumbo v8, "android.bluetooth.profile.extra.STATE"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 171
    .local v5, "sinkState":I
    const-string/jumbo v8, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 173
    .local v4, "previousSinkState":I
    const/4 v8, 0x2

    if-ne v5, v8, :cond_3

    .line 174
    const/4 v8, 0x1

    if-eq v4, v8, :cond_0

    if-nez v4, :cond_3

    .line 175
    :cond_0
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/samsung/android/settings/notification/SoundEffectSettings;

    const/4 v9, 0x2

    invoke-static {v8, v9}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->-set0(Lcom/samsung/android/settings/notification/SoundEffectSettings;I)I

    .line 237
    .end local v4    # "previousSinkState":I
    .end local v5    # "sinkState":I
    :cond_1
    :goto_0
    const-string/jumbo v8, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 239
    const-string/jumbo v8, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v9, -0x1

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 240
    .local v7, "stream":I
    const-string/jumbo v8, "SoundEffectSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "action : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " In Stream Devices changed. Stream: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const/4 v8, 0x3

    if-ne v7, v8, :cond_2

    .line 244
    const-string/jumbo v8, "android.media.EXTRA_VOLUME_STREAM_DEVICES"

    const/4 v9, -0x1

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 245
    .local v1, "newDevice":I
    const-string/jumbo v8, "android.media.EXTRA_PREV_VOLUME_STREAM_DEVICES"

    const/4 v9, -0x1

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 247
    .local v2, "oldDevice":I
    const-string/jumbo v8, "SoundEffectSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "New device : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", old : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const/4 v8, 0x2

    if-ne v1, v8, :cond_15

    .line 249
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/samsung/android/settings/notification/SoundEffectSettings;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->-set0(Lcom/samsung/android/settings/notification/SoundEffectSettings;I)I

    .line 260
    .end local v1    # "newDevice":I
    .end local v2    # "oldDevice":I
    .end local v7    # "stream":I
    :cond_2
    :goto_1
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/samsung/android/settings/notification/SoundEffectSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->-wrap1(Lcom/samsung/android/settings/notification/SoundEffectSettings;)V

    .line 261
    invoke-static {}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->-get0()[Lcom/android/settings/notification/SettingPref;

    move-result-object v9

    const/4 v8, 0x0

    array-length v10, v9

    :goto_2
    if-ge v8, v10, :cond_18

    aget-object v3, v9, v8

    .line 262
    .local v3, "pref":Lcom/android/settings/notification/SettingPref;
    iget-object v11, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/samsung/android/settings/notification/SoundEffectSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->-get4(Lcom/samsung/android/settings/notification/SoundEffectSettings;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/android/settings/notification/SettingPref;->update(Landroid/content/Context;)V

    .line 261
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 176
    .end local v3    # "pref":Lcom/android/settings/notification/SettingPref;
    .restart local v4    # "previousSinkState":I
    .restart local v5    # "sinkState":I
    :cond_3
    if-eqz v5, :cond_4

    const/4 v8, 0x3

    if-ne v5, v8, :cond_1

    .line 177
    :cond_4
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/samsung/android/settings/notification/SoundEffectSettings;

    invoke-virtual {v8}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->isAudioPathEarjack()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 178
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/samsung/android/settings/notification/SoundEffectSettings;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->-set0(Lcom/samsung/android/settings/notification/SoundEffectSettings;I)I

    goto/16 :goto_0

    .line 179
    :cond_5
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/samsung/android/settings/notification/SoundEffectSettings;

    invoke-virtual {v8}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->isAudioPathWFD()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 180
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/samsung/android/settings/notification/SoundEffectSettings;

    const/4 v9, 0x3

    invoke-static {v8, v9}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->-set0(Lcom/samsung/android/settings/notification/SoundEffectSettings;I)I

    goto/16 :goto_0

    .line 182
    :cond_6
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/samsung/android/settings/notification/SoundEffectSettings;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->-set0(Lcom/samsung/android/settings/notification/SoundEffectSettings;I)I

    goto/16 :goto_0

    .line 185
    .end local v4    # "previousSinkState":I
    .end local v5    # "sinkState":I
    :cond_7
    const-string/jumbo v8, "android.bluetooth.a2dp.profile.action.PLAYING_STATE_CHANGED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 187
    const-string/jumbo v8, "android.bluetooth.profile.extra.STATE"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 188
    .restart local v5    # "sinkState":I
    const-string/jumbo v8, "SoundEffectSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "BT Play state changed, new state : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const/16 v8, 0xa

    if-ne v5, v8, :cond_a

    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/samsung/android/settings/notification/SoundEffectSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->-get5(Lcom/samsung/android/settings/notification/SoundEffectSettings;)I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_a

    .line 192
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/samsung/android/settings/notification/SoundEffectSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->-get3(Lcom/samsung/android/settings/notification/SoundEffectSettings;)Landroid/media/AudioManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/media/AudioManager;->isMusicActiveRemotely()Z

    move-result v8

    if-nez v8, :cond_8

    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/samsung/android/settings/notification/SoundEffectSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->-get5(Lcom/samsung/android/settings/notification/SoundEffectSettings;)I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_9

    .line 193
    :cond_8
    const-string/jumbo v8, "SoundEffectSettings"

    const-string/jumbo v9, "Music is routed to WFD, unless STREAM_DEVICES_CHANGED is received as BT for Music"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 195
    :cond_9
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/samsung/android/settings/notification/SoundEffectSettings;

    const/4 v9, 0x2

    invoke-static {v8, v9}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->-set0(Lcom/samsung/android/settings/notification/SoundEffectSettings;I)I

    goto/16 :goto_0

    .line 197
    :cond_a
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/samsung/android/settings/notification/SoundEffectSettings;

    invoke-virtual {v8}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->isAudioPathBTHeadphone()Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/samsung/android/settings/notification/SoundEffectSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->-get5(Lcom/samsung/android/settings/notification/SoundEffectSettings;)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    .line 200
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/samsung/android/settings/notification/SoundEffectSettings;

    invoke-virtual {v8}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->isAudioPathEarjack()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 201
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/samsung/android/settings/notification/SoundEffectSettings;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->-set0(Lcom/samsung/android/settings/notification/SoundEffectSettings;I)I

    goto/16 :goto_0

    .line 202
    :cond_b
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/samsung/android/settings/notification/SoundEffectSettings;

    invoke-virtual {v8}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->isAudioPathWFD()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 203
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/samsung/android/settings/notification/SoundEffectSettings;

    const/4 v9, 0x3

    invoke-static {v8, v9}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->-set0(Lcom/samsung/android/settings/notification/SoundEffectSettings;I)I

    goto/16 :goto_0

    .line 205
    :cond_c
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/samsung/android/settings/notification/SoundEffectSettings;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->-set0(Lcom/samsung/android/settings/notification/SoundEffectSettings;I)I

    goto/16 :goto_0

    .line 208
    .end local v5    # "sinkState":I
    :cond_d
    const-string/jumbo v8, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 209
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/samsung/android/settings/notification/SoundEffectSettings;

    invoke-virtual {v8}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->isAudioPathEarjack()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 210
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/samsung/android/settings/notification/SoundEffectSettings;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->-set0(Lcom/samsung/android/settings/notification/SoundEffectSettings;I)I

    goto/16 :goto_0

    .line 211
    :cond_e
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/samsung/android/settings/notification/SoundEffectSettings;

    invoke-virtual {v8}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->isAudioPathBTHeadphone()Z

    move-result v8

    if-eqz v8, :cond_f

    .line 212
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/samsung/android/settings/notification/SoundEffectSettings;

    const/4 v9, 0x2

    invoke-static {v8, v9}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->-set0(Lcom/samsung/android/settings/notification/SoundEffectSettings;I)I

    goto/16 :goto_0

    .line 213
    :cond_f
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/samsung/android/settings/notification/SoundEffectSettings;

    invoke-virtual {v8}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->isAudioPathWFD()Z

    move-result v8

    if-eqz v8, :cond_10

    .line 214
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/samsung/android/settings/notification/SoundEffectSettings;

    const/4 v9, 0x3

    invoke-static {v8, v9}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->-set0(Lcom/samsung/android/settings/notification/SoundEffectSettings;I)I

    goto/16 :goto_0

    .line 216
    :cond_10
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/samsung/android/settings/notification/SoundEffectSettings;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->-set0(Lcom/samsung/android/settings/notification/SoundEffectSettings;I)I

    goto/16 :goto_0

    .line 218
    :cond_11
    const-string/jumbo v8, "android.intent.action.WIFI_DISPLAY"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 220
    const-string/jumbo v8, "state"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 221
    .local v6, "state":I
    const-string/jumbo v8, "SoundEffectSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "ACTION_WIFIDISPLAY_STATE_CHANGED state = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const/4 v8, 0x1

    if-ne v6, v8, :cond_12

    .line 224
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/samsung/android/settings/notification/SoundEffectSettings;

    const/4 v9, 0x3

    invoke-static {v8, v9}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->-set0(Lcom/samsung/android/settings/notification/SoundEffectSettings;I)I

    goto/16 :goto_0

    .line 226
    :cond_12
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/samsung/android/settings/notification/SoundEffectSettings;

    invoke-virtual {v8}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->isAudioPathEarjack()Z

    move-result v8

    if-eqz v8, :cond_13

    .line 227
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/samsung/android/settings/notification/SoundEffectSettings;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->-set0(Lcom/samsung/android/settings/notification/SoundEffectSettings;I)I

    goto/16 :goto_0

    .line 228
    :cond_13
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/samsung/android/settings/notification/SoundEffectSettings;

    invoke-virtual {v8}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->isAudioPathBTHeadphone()Z

    move-result v8

    if-eqz v8, :cond_14

    .line 229
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/samsung/android/settings/notification/SoundEffectSettings;

    const/4 v9, 0x2

    invoke-static {v8, v9}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->-set0(Lcom/samsung/android/settings/notification/SoundEffectSettings;I)I

    goto/16 :goto_0

    .line 231
    :cond_14
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/samsung/android/settings/notification/SoundEffectSettings;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->-set0(Lcom/samsung/android/settings/notification/SoundEffectSettings;I)I

    goto/16 :goto_0

    .line 250
    .end local v6    # "state":I
    .restart local v1    # "newDevice":I
    .restart local v2    # "oldDevice":I
    .restart local v7    # "stream":I
    :cond_15
    const/4 v8, 0x4

    if-ne v1, v8, :cond_16

    .line 251
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/samsung/android/settings/notification/SoundEffectSettings;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->-set0(Lcom/samsung/android/settings/notification/SoundEffectSettings;I)I

    goto/16 :goto_1

    .line 252
    :cond_16
    const/16 v8, 0x80

    if-ne v1, v8, :cond_17

    .line 253
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/samsung/android/settings/notification/SoundEffectSettings;

    const/4 v9, 0x2

    invoke-static {v8, v9}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->-set0(Lcom/samsung/android/settings/notification/SoundEffectSettings;I)I

    goto/16 :goto_1

    .line 254
    :cond_17
    const v8, 0x8000

    if-ne v1, v8, :cond_2

    .line 255
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/samsung/android/settings/notification/SoundEffectSettings;

    const/4 v9, 0x3

    invoke-static {v8, v9}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->-set0(Lcom/samsung/android/settings/notification/SoundEffectSettings;I)I

    goto/16 :goto_1

    .line 167
    .end local v1    # "newDevice":I
    .end local v2    # "oldDevice":I
    .end local v7    # "stream":I
    :cond_18
    return-void
.end method
