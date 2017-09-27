.class Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils$3;
.super Landroid/content/BroadcastReceiver;
.source "DcmKeyguardMascotUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils$3;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    .line 172
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "com.nttdocomo.android.mascot.widget.LockScreenMascotWidget.ACTION_SCREEN_UNLOCK"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 175
    const-string/jumbo v4, "eventType"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 176
    .local v1, "eventType":I
    const-string/jumbo v4, "SecKeyguardStatusUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "NotificationPanelView.onReceive(): ACTION_SCREEN_UNLOCK, eventType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const/4 v2, 0x0

    .line 178
    .local v2, "mascotAction":Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 192
    .end local v2    # "mascotAction":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_0

    .line 193
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 194
    .local v3, "mascotIntent":Landroid/content/Intent;
    const-string/jumbo v4, "com.nttdocomo.android.mascot"

    .line 195
    const-string/jumbo v5, "com.nttdocomo.android.mascot.application.MascotApplicationProxy"

    .line 194
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    const-string/jumbo v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    const-string/jumbo v4, "eventType"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 198
    const/high16 v4, 0x10200000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 200
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils$3;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;

    iput-boolean v7, v4, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mMascotClicked:Z

    .line 201
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils$3;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->-get2(Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v4

    invoke-virtual {v4, v3, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->startActivity(Landroid/content/Intent;Z)V

    .line 171
    .end local v1    # "eventType":I
    .end local v3    # "mascotIntent":Landroid/content/Intent;
    :cond_0
    return-void

    .line 180
    .restart local v1    # "eventType":I
    .restart local v2    # "mascotAction":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v2, "LOCK_CLICK_MASCOT"

    .local v2, "mascotAction":Ljava/lang/String;
    goto :goto_0

    .line 184
    .local v2, "mascotAction":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v2, "LOCK_CLICK_POPUP"

    .local v2, "mascotAction":Ljava/lang/String;
    goto :goto_0

    .line 187
    .local v2, "mascotAction":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v2, "ACTION_UNLOCK"

    .local v2, "mascotAction":Ljava/lang/String;
    goto :goto_0

    .line 178
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
