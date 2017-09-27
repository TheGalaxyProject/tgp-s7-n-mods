.class Lcom/android/settings/SharedPreferencesLogger$AsyncPackageCheck;
.super Landroid/os/AsyncTask;
.source "SharedPreferencesLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SharedPreferencesLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncPackageCheck"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SharedPreferencesLogger;


# direct methods
.method private constructor <init>(Lcom/android/settings/SharedPreferencesLogger;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/SharedPreferencesLogger;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/settings/SharedPreferencesLogger$AsyncPackageCheck;->this$0:Lcom/android/settings/SharedPreferencesLogger;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/SharedPreferencesLogger;Lcom/android/settings/SharedPreferencesLogger$AsyncPackageCheck;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/SharedPreferencesLogger;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/SharedPreferencesLogger$AsyncPackageCheck;-><init>(Lcom/android/settings/SharedPreferencesLogger;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 113
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/SharedPreferencesLogger$AsyncPackageCheck;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 8
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 114
    const/4 v6, 0x0

    aget-object v2, p1, v6

    .line 115
    .local v2, "key":Ljava/lang/String;
    const/4 v6, 0x1

    aget-object v5, p1, v6

    .line 116
    .local v5, "value":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/SharedPreferencesLogger$AsyncPackageCheck;->this$0:Lcom/android/settings/SharedPreferencesLogger;

    invoke-static {v6}, Lcom/android/settings/SharedPreferencesLogger;->-get0(Lcom/android/settings/SharedPreferencesLogger;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 119
    .local v4, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 120
    .local v3, "name":Landroid/content/ComponentName;
    if-eqz v5, :cond_0

    .line 121
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 126
    .end local v3    # "name":Landroid/content/ComponentName;
    :cond_0
    :goto_0
    const/16 v6, 0x2000

    :try_start_1
    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 127
    iget-object v6, p0, Lcom/android/settings/SharedPreferencesLogger$AsyncPackageCheck;->this$0:Lcom/android/settings/SharedPreferencesLogger;

    invoke-static {v6, v2, v5}, Lcom/android/settings/SharedPreferencesLogger;->-wrap0(Lcom/android/settings/SharedPreferencesLogger;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 132
    :goto_1
    return-object v7

    .line 128
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v6, p0, Lcom/android/settings/SharedPreferencesLogger$AsyncPackageCheck;->this$0:Lcom/android/settings/SharedPreferencesLogger;

    invoke-static {v6, v2, v5}, Lcom/android/settings/SharedPreferencesLogger;->-wrap1(Lcom/android/settings/SharedPreferencesLogger;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 123
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0
.end method
