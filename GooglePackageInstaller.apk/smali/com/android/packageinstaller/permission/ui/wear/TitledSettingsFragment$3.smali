.class Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment$3;
.super Ljava/lang/Object;
.source "TitledSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;->positionOnCircular(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;

.field final synthetic val$bottomPadding:I

.field final synthetic val$leftPadding:I

.field final synthetic val$rightPadding:I

.field final synthetic val$topPadding:I

.field final synthetic val$wheel:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;Landroid/view/ViewGroup;IIII)V
    .locals 0

    iput-object p1, p0, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment$3;->this$0:Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;

    iput-object p2, p0, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment$3;->val$wheel:Landroid/view/ViewGroup;

    iput p3, p0, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment$3;->val$leftPadding:I

    iput p4, p0, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment$3;->val$topPadding:I

    iput p5, p0, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment$3;->val$rightPadding:I

    iput p6, p0, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment$3;->val$bottomPadding:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 6

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment$3;->this$0:Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;

    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;->-set0(Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;I)I

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment$3;->val$wheel:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment$3;->val$leftPadding:I

    iget v2, p0, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment$3;->val$topPadding:I

    iget v3, p0, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment$3;->val$rightPadding:I

    iget-object v4, p0, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment$3;->this$0:Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;

    invoke-static {v4}, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;->-get0(Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;)I

    move-result v4

    iget v5, p0, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment$3;->val$bottomPadding:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    invoke-virtual {p2}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method
