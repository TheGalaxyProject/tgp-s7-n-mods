.class Lcom/android/settings/deviceinfo/ImeiInformation$1;
.super Ljava/lang/Object;
.source "ImeiInformation.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/ImeiInformation;->setSecPreferenceValue(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/ImeiInformation;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/ImeiInformation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/deviceinfo/ImeiInformation;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/android/settings/deviceinfo/ImeiInformation$1;->this$0:Lcom/android/settings/deviceinfo/ImeiInformation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 301
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 302
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.settings"

    .line 303
    const-string/jumbo v2, "com.samsung.android.settings.deviceinfo.IMEIBarcodeDisplayActivity"

    .line 302
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    iget-object v1, p0, Lcom/android/settings/deviceinfo/ImeiInformation$1;->this$0:Lcom/android/settings/deviceinfo/ImeiInformation;

    invoke-virtual {v1, v0}, Lcom/android/settings/deviceinfo/ImeiInformation;->startActivity(Landroid/content/Intent;)V

    .line 305
    const/4 v1, 0x1

    return v1
.end method
