.class Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment$1;
.super Ljava/lang/Object;
.source "TitledSettingsFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment$1;->this$0:Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment$1;->this$0:Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;

    invoke-static {v0}, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;->-wrap0(Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;)V

    .line 64
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 58
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 61
    return-void
.end method
