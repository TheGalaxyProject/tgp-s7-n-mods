.class Lcom/android/systemui/recents/model/TaskStack$2;
.super Ljava/lang/Object;
.source "TaskStack.java"

# interfaces
.implements Lcom/android/systemui/recents/model/TaskFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/model/TaskStack;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/model/TaskStack;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/model/TaskStack;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/model/TaskStack;

    .prologue
    .line 946
    iput-object p1, p0, Lcom/android/systemui/recents/model/TaskStack$2;->this$0:Lcom/android/systemui/recents/model/TaskStack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptTask(Landroid/util/SparseArray;Lcom/android/systemui/recents/model/Task;I)Z
    .locals 1
    .param p2, "t"    # Lcom/android/systemui/recents/model/Task;
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;",
            "Lcom/android/systemui/recents/model/Task;",
            "I)Z"
        }
    .end annotation

    .prologue
    .line 959
    .local p1, "taskIdMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/systemui/recents/model/Task;>;"
    iget-boolean v0, p2, Lcom/android/systemui/recents/model/Task;->isStackTask:Z

    return v0
.end method
