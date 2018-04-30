.class Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword$2;
.super Ljava/lang/Object;
.source "PersonalPageModePassword.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;


# direct methods
.method constructor <init>(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword$2;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3

    const-string/jumbo v0, "PersonalPageModePassword"

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

    const/4 v0, 0x6

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword$2;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;

    invoke-virtual {v0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->verifyPassword()V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword$2;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;

    invoke-virtual {v0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->verifyPassword()V

    goto :goto_0

    :cond_2
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword$2;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;

    invoke-virtual {v0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->verifyPassword()V

    goto :goto_0
.end method
