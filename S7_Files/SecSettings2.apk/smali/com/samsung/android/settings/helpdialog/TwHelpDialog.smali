.class public Lcom/samsung/android/settings/helpdialog/TwHelpDialog;
.super Landroid/app/Dialog;
.source "TwHelpDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;
    }
.end annotation


# static fields
.field private static final synthetic -com-samsung-android-settings-helpdialog-TwHelpDialog$TouchModeSwitchesValues:[I


# instance fields
.field private fPunchEvent:Z

.field private mShowWrongInputToast:Z

.field private mTouchTransparencyMode:Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;

.field private mWrongInputToast:Landroid/widget/Toast;


# direct methods
.method private static synthetic -getcom-samsung-android-settings-helpdialog-TwHelpDialog$TouchModeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->-com-samsung-android-settings-helpdialog-TwHelpDialog$TouchModeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->-com-samsung-android-settings-helpdialog-TwHelpDialog$TouchModeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;->values()[Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE:Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v1}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE_NO_MOVE:Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v1}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;->TRANSPARENT:Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v1}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->-com-samsung-android-settings-helpdialog-TwHelpDialog$TouchModeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 60
    const v2, 0x7f0f0250

    invoke-direct {p0, p1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 42
    sget-object v2, Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;->TRANSPARENT:Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;

    iput-object v2, p0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->mTouchTransparencyMode:Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;

    .line 44
    iput-object v5, p0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->mWrongInputToast:Landroid/widget/Toast;

    .line 45
    iput-boolean v4, p0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->mShowWrongInputToast:Z

    .line 46
    iput-boolean v3, p0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->fPunchEvent:Z

    .line 62
    invoke-virtual {p0}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 63
    .local v1, "window":Landroid/view/Window;
    if-eqz v1, :cond_1

    .line 64
    invoke-static {}, Lcom/android/settings/Utils;->isFullScreenSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 66
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x400

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 67
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 68
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 71
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 75
    :cond_1
    sget-object v2, Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;->TRANSPARENT:Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;

    iput-object v2, p0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->mTouchTransparencyMode:Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;

    .line 77
    const v2, 0x7f0b0e34

    .line 76
    invoke-static {p1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->mWrongInputToast:Landroid/widget/Toast;

    .line 78
    iput-boolean v4, p0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->mShowWrongInputToast:Z

    .line 79
    iput-boolean v3, p0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->fPunchEvent:Z

    .line 59
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x2

    const v6, 0x7f11001d

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 100
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-le v2, v5, :cond_0

    .line 101
    return v5

    .line 104
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 106
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_1

    .line 107
    iput-boolean v5, p0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->fPunchEvent:Z

    .line 112
    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->-getcom-samsung-android-settings-helpdialog-TwHelpDialog$TouchModeSwitchesValues()[I

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->mTouchTransparencyMode:Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v3}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 167
    invoke-virtual {p0}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 170
    :cond_2
    :goto_0
    if-eq v0, v5, :cond_3

    .line 171
    const/4 v2, 0x6

    if-ne v0, v2, :cond_9

    .line 176
    :cond_3
    :goto_1
    iput-boolean v4, p0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->fPunchEvent:Z

    .line 179
    :cond_4
    return v4

    .line 115
    :pswitch_0
    iget-boolean v2, p0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->fPunchEvent:Z

    if-eqz v2, :cond_6

    .line 116
    invoke-virtual {p0}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 118
    if-nez v0, :cond_5

    .line 120
    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 122
    .local v1, "containerView":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 123
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 125
    .end local v1    # "containerView":Landroid/view/View;
    :cond_5
    if-ne v0, v5, :cond_2

    .line 126
    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 128
    .restart local v1    # "containerView":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 129
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 133
    .end local v1    # "containerView":Landroid/view/View;
    :cond_6
    iget-boolean v2, p0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->mShowWrongInputToast:Z

    if-eqz v2, :cond_2

    .line 134
    iget-object v2, p0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->mWrongInputToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 141
    :pswitch_1
    iget-boolean v2, p0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->fPunchEvent:Z

    if-eqz v2, :cond_8

    if-eq v0, v7, :cond_8

    .line 142
    invoke-virtual {p0}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 144
    if-nez v0, :cond_7

    .line 146
    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 148
    .restart local v1    # "containerView":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 149
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 151
    .end local v1    # "containerView":Landroid/view/View;
    :cond_7
    if-ne v0, v5, :cond_2

    .line 152
    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 154
    .restart local v1    # "containerView":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 155
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 159
    .end local v1    # "containerView":Landroid/view/View;
    :cond_8
    iget-boolean v2, p0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->mShowWrongInputToast:Z

    if-eqz v2, :cond_2

    if-eq v0, v7, :cond_2

    .line 160
    iget-object v2, p0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->mWrongInputToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 172
    :cond_9
    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    .line 173
    if-eqz v0, :cond_4

    .line 174
    const/4 v2, 0x5

    if-eq v0, v2, :cond_4

    .line 175
    if-eq v0, v7, :cond_4

    goto :goto_1

    .line 112
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setShowWrongInputToast(Z)V
    .locals 0
    .param p1, "pShowWrongInputToast"    # Z

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->mShowWrongInputToast:Z

    .line 90
    return-void
.end method

.method public setTouchTransparencyMode(Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;)V
    .locals 0
    .param p1, "touchTransparencyMode"    # Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->mTouchTransparencyMode:Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;

    .line 82
    return-void
.end method
