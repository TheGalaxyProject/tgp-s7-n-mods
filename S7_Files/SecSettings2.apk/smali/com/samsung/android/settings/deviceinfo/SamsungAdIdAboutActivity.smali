.class public Lcom/samsung/android/settings/deviceinfo/SamsungAdIdAboutActivity;
.super Lcom/android/settings/InstrumentedActivity;
.source "SamsungAdIdAboutActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/deviceinfo/SamsungAdIdAboutActivity$1;
    }
.end annotation


# static fields
.field static textView:Landroid/widget/TextView;


# instance fields
.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/settings/InstrumentedActivity;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SamsungAdIdAboutActivity;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 69
    new-instance v0, Lcom/samsung/android/settings/deviceinfo/SamsungAdIdAboutActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/deviceinfo/SamsungAdIdAboutActivity$1;-><init>(Lcom/samsung/android/settings/deviceinfo/SamsungAdIdAboutActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SamsungAdIdAboutActivity;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 25
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/SamsungAdIdAboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1002fc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v2, 0x7f0401fd

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/deviceinfo/SamsungAdIdAboutActivity;->setContentView(I)V

    .line 38
    const v2, 0x7f11055f

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/deviceinfo/SamsungAdIdAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sput-object v2, Lcom/samsung/android/settings/deviceinfo/SamsungAdIdAboutActivity;->textView:Landroid/widget/TextView;

    .line 40
    const v2, 0x7f0b0538

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/deviceinfo/SamsungAdIdAboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "phrase1":Ljava/lang/String;
    const v2, 0x7f0b0539

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/deviceinfo/SamsungAdIdAboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "phrase2":Ljava/lang/String;
    sget-object v2, Lcom/samsung/android/settings/deviceinfo/SamsungAdIdAboutActivity;->textView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    new-instance v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SamsungAdIdAboutActivity;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 33
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 59
    invoke-super {p0}, Lcom/android/settings/InstrumentedActivity;->onPause()V

    .line 61
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SamsungAdIdAboutActivity;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "SamsungAdIdAboutActivity"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 57
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 51
    invoke-super {p0}, Lcom/android/settings/InstrumentedActivity;->onResume()V

    .line 53
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SamsungAdIdAboutActivity;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SamsungAdIdAboutActivity;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v2, "SamsungAdIdAboutActivity"

    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 49
    return-void
.end method
