.class Lcom/android/server/am/AppErrors$3;
.super Ljava/lang/Object;
.source "AppErrors.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/AppErrors;->handleShowAnrUi(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppErrors;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppErrors;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/AppErrors;

    .prologue
    .line 1116
    iput-object p1, p0, Lcom/android/server/am/AppErrors$3;->this$0:Lcom/android/server/am/AppErrors;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    move-object v0, p1

    .line 1118
    check-cast v0, Lcom/android/server/am/AppNotRespondingDialog;

    .line 1119
    .local v0, "a":Lcom/android/server/am/AppNotRespondingDialog;
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 1120
    .local v2, "xy":[I
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Lcom/android/server/am/AppNotRespondingDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 1121
    .local v1, "btn1":Landroid/widget/Button;
    invoke-virtual {v1, v2}, Landroid/widget/Button;->getLocationOnScreen([I)V

    .line 1123
    const-string/jumbo v3, "GATE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "<GATE-M>APP_ANR:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/server/am/AppNotRespondingDialog;->getProcessName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget v5, v2, v5

    invoke-virtual {v1}, Landroid/widget/Button;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1124
    const-string/jumbo v5, ","

    .line 1123
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1124
    const/4 v5, 0x1

    aget v5, v2, v5

    invoke-virtual {v1}, Landroid/widget/Button;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 1123
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1124
    const-string/jumbo v5, "</GATE-M>"

    .line 1123
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    const-string/jumbo v3, "GATE"

    const-string/jumbo v4, "<GATE-M>APP_ANR:Storing dumpstate at /data/log/, dumpstate_app_anr</GATE-M>"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    invoke-virtual {v1}, Landroid/widget/Button;->performClick()Z

    .line 1117
    return-void
.end method
