.class Lcom/android/settings/BugreportPreference$2;
.super Ljava/lang/Object;
.source "BugreportPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/BugreportPreference;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/BugreportPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/BugreportPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/BugreportPreference;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/settings/BugreportPreference$2;->this$0:Lcom/android/settings/BugreportPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/settings/BugreportPreference$2;->this$0:Lcom/android/settings/BugreportPreference;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/BugreportPreference;->-wrap0(Lcom/android/settings/BugreportPreference;I)V

    .line 125
    return-void
.end method
