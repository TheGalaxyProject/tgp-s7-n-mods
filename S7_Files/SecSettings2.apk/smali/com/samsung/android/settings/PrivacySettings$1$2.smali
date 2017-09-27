.class Lcom/samsung/android/settings/PrivacySettings$1$2;
.super Ljava/lang/Object;
.source "PrivacySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/PrivacySettings$1;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/PrivacySettings$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/PrivacySettings$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/settings/PrivacySettings$1;

    .prologue
    .line 416
    iput-object p1, p0, Lcom/samsung/android/settings/PrivacySettings$1$2;->this$1:Lcom/samsung/android/settings/PrivacySettings$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 418
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 417
    return-void
.end method
