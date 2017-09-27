.class Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment$2;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "TitledSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;->initializeLayout(Landroid/support/v7/widget/RecyclerView$Adapter;)V
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
    .line 122
    iput-object p1, p0, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment$2;->this$0:Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "newState"    # I

    .prologue
    .line 124
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment$2;->this$0:Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;

    invoke-static {v0}, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;->-wrap1(Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;)V

    .line 128
    return-void
.end method
