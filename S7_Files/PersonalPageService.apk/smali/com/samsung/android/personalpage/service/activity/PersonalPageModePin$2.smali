.class Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin$2;
.super Ljava/lang/Object;
.source "PersonalPageModePin.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;


# direct methods
.method constructor <init>(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin$2;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 212
    const-string/jumbo v0, "PersonalPageModePin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onEditorAction, actionID ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const/4 v0, 0x6

    if-ne p2, v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin$2;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;

    invoke-virtual {v0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->verifyPinAndMountSecretBox()V

    .line 223
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 217
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_2

    .line 218
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin$2;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;

    invoke-virtual {v0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->verifyPinAndMountSecretBox()V

    goto :goto_0

    .line 219
    :cond_2
    if-nez p2, :cond_0

    .line 220
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin$2;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;

    invoke-virtual {v0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->verifyPinAndMountSecretBox()V

    goto :goto_0
.end method
