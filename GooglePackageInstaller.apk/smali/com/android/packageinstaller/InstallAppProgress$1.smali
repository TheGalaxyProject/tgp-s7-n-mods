.class Lcom/android/packageinstaller/InstallAppProgress$1;
.super Landroid/os/Handler;
.source "InstallAppProgress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/packageinstaller/InstallAppProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/packageinstaller/InstallAppProgress;


# direct methods
.method constructor <init>(Lcom/android/packageinstaller/InstallAppProgress;)V
    .locals 0

    iput-object p1, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    const v11, 0x7f110124

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/16 v10, 0x8

    const/4 v9, 0x0

    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v7, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    invoke-virtual {v7}, Lcom/android/packageinstaller/InstallAppProgress;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string/jumbo v8, "android.intent.extra.RETURN_RESULT"

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v7, "android.intent.extra.INSTALL_RESULT"

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    iget v8, p1, Landroid/os/Message;->arg1:I

    if-nez v8, :cond_0

    move v5, v6

    :cond_0
    invoke-virtual {v7, v5, v4}, Lcom/android/packageinstaller/InstallAppProgress;->setResult(ILandroid/content/Intent;)V

    iget-object v5, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    invoke-static {v5}, Lcom/android/packageinstaller/InstallAppProgress;->-wrap1(Lcom/android/packageinstaller/InstallAppProgress;)V

    return-void

    :cond_1
    iget-object v7, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    invoke-static {v7}, Lcom/android/packageinstaller/InstallAppProgress;->-get6(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/widget/ProgressBar;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/4 v0, -0x1

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-nez v7, :cond_4

    iget-object v5, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    invoke-static {v5}, Lcom/android/packageinstaller/InstallAppProgress;->-get3(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    const v7, 0x7f110125

    invoke-virtual {v5, v7}, Lcom/android/packageinstaller/InstallAppProgress;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    const v8, 0x7f020061

    invoke-virtual {v7, v8}, Lcom/android/packageinstaller/InstallAppProgress;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f0d0144

    iget-object v5, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    iget-object v7, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    invoke-virtual {v7}, Lcom/android/packageinstaller/InstallAppProgress;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    invoke-static {v8}, Lcom/android/packageinstaller/InstallAppProgress;->-get0(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/packageinstaller/InstallAppProgress;->-set0(Lcom/android/packageinstaller/InstallAppProgress;Landroid/content/Intent;)Landroid/content/Intent;

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    invoke-static {v5}, Lcom/android/packageinstaller/InstallAppProgress;->-get4(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    invoke-virtual {v5}, Lcom/android/packageinstaller/InstallAppProgress;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v7, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    invoke-static {v7}, Lcom/android/packageinstaller/InstallAppProgress;->-get4(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v5, v7, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    const/4 v2, 0x1

    :cond_2
    if-eqz v2, :cond_3

    iget-object v5, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    invoke-static {v5}, Lcom/android/packageinstaller/InstallAppProgress;->-get3(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/widget/Button;

    move-result-object v5

    iget-object v7, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    if-eq v0, v6, :cond_6

    iget-object v5, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    invoke-static {v5}, Lcom/android/packageinstaller/InstallAppProgress;->-get2(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object v5, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    invoke-virtual {v5, v11}, Lcom/android/packageinstaller/InstallAppProgress;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    const v6, 0x7f110129

    invoke-virtual {v5, v6}, Lcom/android/packageinstaller/InstallAppProgress;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v5, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    const v6, 0x7f110128

    invoke-virtual {v5, v6}, Lcom/android/packageinstaller/InstallAppProgress;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    iget-object v5, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    invoke-static {v5}, Lcom/android/packageinstaller/InstallAppProgress;->-get1(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/widget/Button;

    move-result-object v5

    iget-object v6, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    invoke-static {v5}, Lcom/android/packageinstaller/InstallAppProgress;->-get5(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_3
    iget-object v5, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    invoke-static {v5}, Lcom/android/packageinstaller/InstallAppProgress;->-get3(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    :cond_4
    iget v7, p1, Landroid/os/Message;->arg1:I

    const/4 v8, 0x6

    if-ne v7, v8, :cond_5

    iget-object v6, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    invoke-static {v6, v5}, Lcom/android/packageinstaller/InstallAppProgress;->-wrap3(Lcom/android/packageinstaller/InstallAppProgress;I)V

    return-void

    :cond_5
    iget-object v5, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    const v7, 0x7f110125

    invoke-virtual {v5, v7}, Lcom/android/packageinstaller/InstallAppProgress;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    const v8, 0x7f020081

    invoke-virtual {v7, v8}, Lcom/android/packageinstaller/InstallAppProgress;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-static {v5, v7}, Lcom/android/packageinstaller/InstallAppProgress;->-wrap0(Lcom/android/packageinstaller/InstallAppProgress;I)I

    move-result v0

    const v1, 0x7f0d014b

    iget-object v5, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    invoke-static {v5}, Lcom/android/packageinstaller/InstallAppProgress;->-get3(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_1

    :cond_6
    iget-object v5, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    const v6, 0x7f110127

    invoke-virtual {v5, v6}, Lcom/android/packageinstaller/InstallAppProgress;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v5, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    invoke-virtual {v5, v11}, Lcom/android/packageinstaller/InstallAppProgress;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    const v6, 0x7f110128

    invoke-virtual {v5, v6}, Lcom/android/packageinstaller/InstallAppProgress;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
