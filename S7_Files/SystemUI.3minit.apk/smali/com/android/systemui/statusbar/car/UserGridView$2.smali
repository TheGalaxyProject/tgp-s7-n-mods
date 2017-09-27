.class Lcom/android/systemui/statusbar/car/UserGridView$2;
.super Ljava/lang/Object;
.source "UserGridView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/car/UserGridView;->init(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/car/UserGridView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/car/UserGridView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/car/UserGridView;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/systemui/statusbar/car/UserGridView$2;->this$0:Lcom/android/systemui/statusbar/car/UserGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x1

    .line 79
    iget-object v1, p0, Lcom/android/systemui/statusbar/car/UserGridView$2;->this$0:Lcom/android/systemui/statusbar/car/UserGridView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/car/UserGridView;->-get0(Lcom/android/systemui/statusbar/car/UserGridView;)Lcom/android/systemui/statusbar/car/UserGridView$Adapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/systemui/statusbar/car/UserGridView$Adapter;->getItem(I)Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    move-result-object v0

    .line 80
    .local v0, "record":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isAddUser:Z

    if-eqz v1, :cond_1

    .line 81
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 83
    :cond_1
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isGuest:Z

    if-eqz v1, :cond_3

    .line 84
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isCurrent:Z

    if-eqz v1, :cond_2

    .line 85
    iget-object v1, p0, Lcom/android/systemui/statusbar/car/UserGridView$2;->this$0:Lcom/android/systemui/statusbar/car/UserGridView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/car/UserGridView;->-get1(Lcom/android/systemui/statusbar/car/UserGridView;)Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->switchTo(Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)V

    .line 87
    :cond_2
    return v4

    .line 90
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/car/UserGridView$2;->this$0:Lcom/android/systemui/statusbar/car/UserGridView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/car/UserGridView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    .line 91
    iget-object v3, p0, Lcom/android/systemui/statusbar/car/UserGridView$2;->this$0:Lcom/android/systemui/statusbar/car/UserGridView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/car/UserGridView;->-get1(Lcom/android/systemui/statusbar/car/UserGridView;)Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    move-result-object v3

    .line 90
    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/UserUtil;->deleteUserWithPrompt(Landroid/content/Context;ILcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    .line 92
    return v4
.end method
