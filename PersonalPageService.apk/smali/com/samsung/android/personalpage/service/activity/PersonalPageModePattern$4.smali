.class Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$4;
.super Landroid/os/CountDownTimer;
.source "PersonalPageModePattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;


# direct methods
.method constructor <init>(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$4;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$4;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;

    sget-object v1, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$Stage;->NeedToUnlock:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$Stage;

    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->-wrap4(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$Stage;)V

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$4;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;

    invoke-static {v0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->-get0(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;)Landroid/widget/ImageButton;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method

.method public onTick(J)V
    .locals 7

    const/16 v1, 0x3c

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v0, v2

    if-ne v0, v4, :cond_1

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$4;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;

    invoke-static {v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->-get3(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$4;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;

    const v3, 0x7f06000e

    invoke-virtual {v2, v3}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-le v0, v4, :cond_2

    if-gt v0, v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$4;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;

    invoke-static {v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->-get3(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$4;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f06000d

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    if-lez v0, :cond_0

    if-le v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$4;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;

    invoke-static {v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->-get3(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$4;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;

    new-array v4, v4, [Ljava/lang/Object;

    rem-int/lit8 v1, v0, 0x3c

    if-nez v1, :cond_3

    div-int/lit8 v1, v0, 0x3c

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    const v1, 0x7f06000f

    invoke-virtual {v3, v1, v4}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    div-int/lit8 v1, v0, 0x3c

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
