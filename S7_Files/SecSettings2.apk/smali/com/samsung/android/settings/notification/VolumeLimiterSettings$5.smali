.class Lcom/samsung/android/settings/notification/VolumeLimiterSettings$5;
.super Ljava/lang/Object;
.source "VolumeLimiterSettings.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->showSetPasswordDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$5;->this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 241
    if-eqz p2, :cond_0

    .line 242
    const/4 v0, 0x6

    if-ne p2, v0, :cond_1

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$5;->this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->handleNext()V

    .line 245
    const/4 v0, 0x1

    return v0

    .line 243
    :cond_1
    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    .line 247
    return v1
.end method
