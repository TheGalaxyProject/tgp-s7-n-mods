.class public Lcom/amnix/supportme/supportme_activity_main_amnix;
.super Landroid/app/Activity;
.source "supportme_activity_main_amnix.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field b1:Landroid/widget/Button;

.field b2:Landroid/widget/Button;

.field b3:Landroid/widget/Button;

.field b4:Landroid/widget/Button;

.field i:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private ViewDonatioURL()V
    .locals 5

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "http://forum.xda-developers.com/donatetome.php?u="

    invoke-virtual {p0}, Lcom/amnix/supportme/supportme_activity_main_amnix;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Donation URL"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$0(Lcom/amnix/supportme/supportme_activity_main_amnix;)V
    .locals 0

    invoke-direct {p0}, Lcom/amnix/supportme/supportme_activity_main_amnix;->donatetoamnix()V

    return-void
.end method

.method static synthetic access$1(Lcom/amnix/supportme/supportme_activity_main_amnix;)V
    .locals 0

    invoke-direct {p0}, Lcom/amnix/supportme/supportme_activity_main_amnix;->sources()V

    return-void
.end method

.method static synthetic access$2(Lcom/amnix/supportme/supportme_activity_main_amnix;)V
    .locals 0

    invoke-direct {p0}, Lcom/amnix/supportme/supportme_activity_main_amnix;->xdaurl()V

    return-void
.end method

.method private donatetoamnix()V
    .locals 3

    const-string v0, "http://forum.xda-developers.com/donatetome.php?u=4729939"

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/amnix/supportme/supportme_activity_main_amnix;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private opensupporturl()V
    .locals 5

    const-string v2, "http://forum.xda-developers.com/donatetome.php?u="

    invoke-virtual {p0}, Lcom/amnix/supportme/supportme_activity_main_amnix;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/amnix/supportme/supportme_activity_main_amnix;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private sources()V
    .locals 3

    const-string v1, "https://github.com/AmniX/Supportme.apk"

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/amnix/supportme/supportme_activity_main_amnix;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private xdaurl()V
    .locals 3

    const-string v1, "http://forum.xda-developers.com/showthread.php?p=52602160"

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/amnix/supportme/supportme_activity_main_amnix;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x1

    const/high16 v1, 0x7f080000

    invoke-virtual {p0, v1}, Lcom/amnix/supportme/supportme_activity_main_amnix;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-ne p1, v1, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/amnix/supportme/supportme_activity_main_amnix;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Use Browser which support javascript and flash.\nI recommand Google Chrome"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-direct {p0}, Lcom/amnix/supportme/supportme_activity_main_amnix;->opensupporturl()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/amnix/supportme/supportme_activity_main_amnix;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "No Browser Found!\nPlease Install a Browser from Playstore."

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    const v1, 0x7f080001

    invoke-virtual {p0, v1}, Lcom/amnix/supportme/supportme_activity_main_amnix;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-ne p1, v1, :cond_2

    invoke-virtual {p0}, Lcom/amnix/supportme/supportme_activity_main_amnix;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Well! It\'s Ok!\nThanks to like my work\nEnjoy!\n\nExisting..!!!"

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/amnix/supportme/supportme_activity_main_amnix;->finish()V

    goto :goto_0

    :cond_2
    const v1, 0x7f080002

    invoke-virtual {p0, v1}, Lcom/amnix/supportme/supportme_activity_main_amnix;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-ne p1, v1, :cond_3

    invoke-virtual {p0}, Lcom/amnix/supportme/supportme_activity_main_amnix;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Then just enjoy buddy!\n\nExisting..!!!"

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/amnix/supportme/supportme_activity_main_amnix;->finish()V

    goto :goto_0

    :cond_3
    const v1, 0x7f080003

    invoke-virtual {p0, v1}, Lcom/amnix/supportme/supportme_activity_main_amnix;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-ne p1, v1, :cond_0

    invoke-direct {p0}, Lcom/amnix/supportme/supportme_activity_main_amnix;->ViewDonatioURL()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcom/amnix/supportme/supportme_activity_main_amnix;->setContentView(I)V

    const/high16 v0, 0x7f080000

    invoke-virtual {p0, v0}, Lcom/amnix/supportme/supportme_activity_main_amnix;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/amnix/supportme/supportme_activity_main_amnix;->b1:Landroid/widget/Button;

    const v0, 0x7f080001

    invoke-virtual {p0, v0}, Lcom/amnix/supportme/supportme_activity_main_amnix;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/amnix/supportme/supportme_activity_main_amnix;->b2:Landroid/widget/Button;

    const v0, 0x7f080002

    invoke-virtual {p0, v0}, Lcom/amnix/supportme/supportme_activity_main_amnix;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/amnix/supportme/supportme_activity_main_amnix;->b3:Landroid/widget/Button;

    const v0, 0x7f080003

    invoke-virtual {p0, v0}, Lcom/amnix/supportme/supportme_activity_main_amnix;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/amnix/supportme/supportme_activity_main_amnix;->b4:Landroid/widget/Button;

    iget-object v0, p0, Lcom/amnix/supportme/supportme_activity_main_amnix;->b1:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/amnix/supportme/supportme_activity_main_amnix;->b2:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/amnix/supportme/supportme_activity_main_amnix;->b3:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/amnix/supportme/supportme_activity_main_amnix;->b4:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/amnix/supportme/supportme_activity_main_amnix;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f070000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "About!"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x7f020000

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const-string v1, "This app is developed by \"AmniX\"\nAny developer can use this app without asking me But,\nJust give me a little credit on your respected thread.\nAnd if you like my work then also buy a coffee for me too!\nCheers\n-AmniX"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "Donate \nto AmniX"

    new-instance v2, Lcom/amnix/supportme/supportme_activity_main_amnix$1;

    invoke-direct {v2, p0}, Lcom/amnix/supportme/supportme_activity_main_amnix$1;-><init>(Lcom/amnix/supportme/supportme_activity_main_amnix;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v1, "View\nsources"

    new-instance v2, Lcom/amnix/supportme/supportme_activity_main_amnix$2;

    invoke-direct {v2, p0}, Lcom/amnix/supportme/supportme_activity_main_amnix$2;-><init>(Lcom/amnix/supportme/supportme_activity_main_amnix;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v1, "Xda\nthread"

    new-instance v2, Lcom/amnix/supportme/supportme_activity_main_amnix$3;

    invoke-direct {v2, p0}, Lcom/amnix/supportme/supportme_activity_main_amnix$3;-><init>(Lcom/amnix/supportme/supportme_activity_main_amnix;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f080004
        :pswitch_0
    .end packed-switch
.end method
