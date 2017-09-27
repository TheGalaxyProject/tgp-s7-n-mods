.class public Lcom/android/settings/dashboard/conditional/ConditionManager;
.super Ljava/lang/Object;
.source "ConditionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dashboard/conditional/ConditionManager$1;,
        Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionListener;,
        Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionLoader;
    }
.end annotation


# static fields
.field private static final CONDITION_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings/dashboard/conditional/Condition;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/android/settings/dashboard/conditional/ConditionManager;


# instance fields
.field private final mConditions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/dashboard/conditional/Condition;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mXmlFile:Ljava/io/File;


# direct methods
.method static synthetic -get0(Lcom/android/settings/dashboard/conditional/ConditionManager;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mConditions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/dashboard/conditional/ConditionManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/dashboard/conditional/ConditionManager;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/dashboard/conditional/ConditionManager;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mXmlFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/dashboard/conditional/ConditionManager;Ljava/io/File;)Ljava/io/File;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mXmlFile:Ljava/io/File;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/dashboard/conditional/ConditionManager;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "conditions"    # Ljava/util/ArrayList;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->addMissingConditions(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/dashboard/conditional/ConditionManager;Ljava/io/File;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "xmlFile"    # Ljava/io/File;
    .param p2, "conditions"    # Ljava/util/ArrayList;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings/dashboard/conditional/ConditionManager;->readFromXml(Ljava/io/File;Ljava/util/ArrayList;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 263
    new-instance v0, Lcom/android/settings/dashboard/conditional/ConditionManager$1;

    invoke-direct {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager$1;-><init>()V

    sput-object v0, Lcom/android/settings/dashboard/conditional/ConditionManager;->CONDITION_COMPARATOR:Ljava/util/Comparator;

    .line 36
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "loadConditionsNow"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mListeners:Ljava/util/ArrayList;

    .line 58
    iput-object p1, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mContext:Landroid/content/Context;

    .line 59
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mConditions:Ljava/util/ArrayList;

    .line 60
    if-eqz p2, :cond_0

    .line 61
    new-instance v0, Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionLoader;

    invoke-direct {v0, p0, v3}, Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionLoader;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionLoader;)V

    .line 62
    .local v0, "loader":Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionLoader;
    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionLoader;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionLoader;->onPostExecute(Ljava/util/ArrayList;)V

    .line 57
    .end local v0    # "loader":Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionLoader;
    :goto_0
    return-void

    .line 64
    :cond_0
    new-instance v1, Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionLoader;

    invoke-direct {v1, p0, v3}, Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionLoader;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionLoader;)V

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private addIfMissing(Ljava/lang/Class;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/android/settings/dashboard/conditional/Condition;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/dashboard/conditional/Condition;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 149
    .local p1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/android/settings/dashboard/conditional/Condition;>;"
    .local p2, "conditions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/dashboard/conditional/Condition;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getCondition(Ljava/lang/Class;Ljava/util/List;)Lcom/android/settings/dashboard/conditional/Condition;

    move-result-object v0

    if-nez v0, :cond_0

    .line 151
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->createCondition(Ljava/lang/Class;)Lcom/android/settings/dashboard/conditional/Condition;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    :cond_0
    return-void
.end method

.method private addMissingConditions(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/dashboard/conditional/Condition;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p1, "conditions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/dashboard/conditional/Condition;>;"
    const-class v0, Lcom/android/settings/dashboard/conditional/AirplaneModeCondition;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->addIfMissing(Ljava/lang/Class;Ljava/util/ArrayList;)V

    .line 139
    const-class v0, Lcom/android/settings/dashboard/conditional/HotspotCondition;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->addIfMissing(Ljava/lang/Class;Ljava/util/ArrayList;)V

    .line 140
    const-class v0, Lcom/android/settings/dashboard/conditional/DndCondition;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->addIfMissing(Ljava/lang/Class;Ljava/util/ArrayList;)V

    .line 141
    const-class v0, Lcom/android/settings/dashboard/conditional/BatterySaverCondition;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->addIfMissing(Ljava/lang/Class;Ljava/util/ArrayList;)V

    .line 142
    const-class v0, Lcom/android/settings/dashboard/conditional/CellularDataCondition;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->addIfMissing(Ljava/lang/Class;Ljava/util/ArrayList;)V

    .line 143
    const-class v0, Lcom/android/settings/dashboard/conditional/BackgroundDataCondition;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->addIfMissing(Ljava/lang/Class;Ljava/util/ArrayList;)V

    .line 144
    const-class v0, Lcom/android/settings/dashboard/conditional/WorkModeCondition;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->addIfMissing(Ljava/lang/Class;Ljava/util/ArrayList;)V

    .line 145
    sget-object v0, Lcom/android/settings/dashboard/conditional/ConditionManager;->CONDITION_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 137
    return-void
.end method

.method private createCondition(Ljava/lang/Class;)Lcom/android/settings/dashboard/conditional/Condition;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/android/settings/dashboard/conditional/Condition;"
        }
    .end annotation

    .prologue
    .line 156
    .local p1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/android/settings/dashboard/conditional/AirplaneModeCondition;

    if-ne v0, p1, :cond_0

    .line 157
    new-instance v0, Lcom/android/settings/dashboard/conditional/AirplaneModeCondition;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/conditional/AirplaneModeCondition;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V

    return-object v0

    .line 158
    :cond_0
    const-class v0, Lcom/android/settings/dashboard/conditional/HotspotCondition;

    if-ne v0, p1, :cond_1

    .line 159
    new-instance v0, Lcom/android/settings/dashboard/conditional/HotspotCondition;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/conditional/HotspotCondition;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V

    return-object v0

    .line 160
    :cond_1
    const-class v0, Lcom/android/settings/dashboard/conditional/DndCondition;

    if-ne v0, p1, :cond_2

    .line 161
    new-instance v0, Lcom/android/settings/dashboard/conditional/DndCondition;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/conditional/DndCondition;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V

    return-object v0

    .line 162
    :cond_2
    const-class v0, Lcom/android/settings/dashboard/conditional/BatterySaverCondition;

    if-ne v0, p1, :cond_3

    .line 163
    new-instance v0, Lcom/android/settings/dashboard/conditional/BatterySaverCondition;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/conditional/BatterySaverCondition;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V

    return-object v0

    .line 164
    :cond_3
    const-class v0, Lcom/android/settings/dashboard/conditional/CellularDataCondition;

    if-ne v0, p1, :cond_4

    .line 165
    new-instance v0, Lcom/android/settings/dashboard/conditional/CellularDataCondition;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/conditional/CellularDataCondition;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V

    return-object v0

    .line 166
    :cond_4
    const-class v0, Lcom/android/settings/dashboard/conditional/BackgroundDataCondition;

    if-ne v0, p1, :cond_5

    .line 167
    new-instance v0, Lcom/android/settings/dashboard/conditional/BackgroundDataCondition;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/conditional/BackgroundDataCondition;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V

    return-object v0

    .line 168
    :cond_5
    const-class v0, Lcom/android/settings/dashboard/conditional/WorkModeCondition;

    if-ne v0, p1, :cond_6

    .line 169
    new-instance v0, Lcom/android/settings/dashboard/conditional/WorkModeCondition;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/conditional/WorkModeCondition;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V

    return-object v0

    .line 171
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected Condition "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static get(Landroid/content/Context;)Lcom/android/settings/dashboard/conditional/ConditionManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 249
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->get(Landroid/content/Context;Z)Lcom/android/settings/dashboard/conditional/ConditionManager;

    move-result-object v0

    return-object v0
.end method

.method public static get(Landroid/content/Context;Z)Lcom/android/settings/dashboard/conditional/ConditionManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "loadConditionsNow"    # Z

    .prologue
    .line 253
    sget-object v0, Lcom/android/settings/dashboard/conditional/ConditionManager;->sInstance:Lcom/android/settings/dashboard/conditional/ConditionManager;

    if-nez v0, :cond_0

    .line 254
    new-instance v0, Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/settings/dashboard/conditional/ConditionManager;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lcom/android/settings/dashboard/conditional/ConditionManager;->sInstance:Lcom/android/settings/dashboard/conditional/ConditionManager;

    .line 256
    :cond_0
    sget-object v0, Lcom/android/settings/dashboard/conditional/ConditionManager;->sInstance:Lcom/android/settings/dashboard/conditional/ConditionManager;

    return-object v0
.end method

.method private getCondition(Ljava/lang/Class;Ljava/util/List;)Lcom/android/settings/dashboard/conditional/Condition;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/settings/dashboard/conditional/Condition;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/dashboard/conditional/Condition;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    .line 183
    .local p1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "conditions":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/dashboard/conditional/Condition;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 184
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 185
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/dashboard/conditional/Condition;

    invoke-virtual {v2}, Lcom/android/settings/dashboard/conditional/Condition;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 186
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/dashboard/conditional/Condition;

    return-object v2

    .line 184
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 189
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private readFromXml(Ljava/io/File;Ljava/util/ArrayList;)V
    .locals 10
    .param p1, "xmlFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/dashboard/conditional/Condition;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p2, "conditions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/dashboard/conditional/Condition;>;"
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 79
    .local v6, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 80
    .local v5, "in":Ljava/io/FileReader;
    invoke-interface {v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 81
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    .line 83
    .local v7, "state":I
    :goto_0
    const/4 v8, 0x1

    if-eq v7, v8, :cond_2

    .line 84
    const-string/jumbo v8, "c"

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 85
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 86
    .local v3, "depth":I
    const-string/jumbo v8, ""

    const-string/jumbo v9, "cls"

    invoke-interface {v6, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "clz":Ljava/lang/String;
    const-string/jumbo v8, "com.android.settings.dashboard.conditional."

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 88
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "com.android.settings.dashboard.conditional."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 90
    :cond_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/settings/dashboard/conditional/ConditionManager;->createCondition(Ljava/lang/Class;)Lcom/android/settings/dashboard/conditional/Condition;

    move-result-object v2

    .line 91
    .local v2, "condition":Lcom/android/settings/dashboard/conditional/Condition;
    invoke-static {v6}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 93
    .local v0, "bundle":Landroid/os/PersistableBundle;
    invoke-virtual {v2, v0}, Lcom/android/settings/dashboard/conditional/Condition;->restoreState(Landroid/os/PersistableBundle;)V

    .line 94
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    :goto_1
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-le v8, v3, :cond_1

    .line 96
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 102
    .end local v0    # "bundle":Landroid/os/PersistableBundle;
    .end local v1    # "clz":Ljava/lang/String;
    .end local v2    # "condition":Lcom/android/settings/dashboard/conditional/Condition;
    .end local v3    # "depth":I
    .end local v5    # "in":Ljava/io/FileReader;
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "state":I
    :catch_0
    move-exception v4

    .line 103
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "ConditionManager"

    const-string/jumbo v9, "Problem reading condition_state.xml"

    invoke-static {v8, v9, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    .line 99
    .restart local v5    # "in":Ljava/io/FileReader;
    .restart local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "state":I
    :cond_1
    :try_start_1
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    goto :goto_0

    .line 101
    :cond_2
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private saveToXml()V
    .locals 9

    .prologue
    .line 110
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v5

    .line 111
    .local v5, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    new-instance v6, Ljava/io/FileWriter;

    iget-object v7, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mXmlFile:Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 112
    .local v6, "writer":Ljava/io/FileWriter;
    invoke-interface {v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 114
    const-string/jumbo v7, "UTF-8"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 115
    const-string/jumbo v7, ""

    const-string/jumbo v8, "cs"

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 117
    iget-object v7, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mConditions:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 118
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 119
    new-instance v1, Landroid/os/PersistableBundle;

    invoke-direct {v1}, Landroid/os/PersistableBundle;-><init>()V

    .line 120
    .local v1, "bundle":Landroid/os/PersistableBundle;
    iget-object v7, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mConditions:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/dashboard/conditional/Condition;

    invoke-virtual {v7, v1}, Lcom/android/settings/dashboard/conditional/Condition;->saveState(Landroid/os/PersistableBundle;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 121
    const-string/jumbo v7, ""

    const-string/jumbo v8, "c"

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 122
    iget-object v7, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mConditions:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/dashboard/conditional/Condition;

    invoke-virtual {v7}, Lcom/android/settings/dashboard/conditional/Condition;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, "clz":Ljava/lang/String;
    const-string/jumbo v7, ""

    const-string/jumbo v8, "cls"

    invoke-interface {v5, v7, v8, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 124
    invoke-virtual {v1, v5}, Landroid/os/PersistableBundle;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 125
    const-string/jumbo v7, ""

    const-string/jumbo v8, "c"

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 118
    .end local v2    # "clz":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 129
    .end local v1    # "bundle":Landroid/os/PersistableBundle;
    :cond_1
    const-string/jumbo v7, ""

    const-string/jumbo v8, "cs"

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 130
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 131
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .end local v0    # "N":I
    .end local v4    # "i":I
    .end local v5    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v6    # "writer":Ljava/io/FileWriter;
    :goto_1
    return-void

    .line 132
    :catch_0
    move-exception v3

    .line 133
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "ConditionManager"

    const-string/jumbo v8, "Problem writing condition_state.xml"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public getCondition(Ljava/lang/Class;)Lcom/android/settings/dashboard/conditional/Condition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/settings/dashboard/conditional/Condition;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 179
    .local p1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mConditions:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getCondition(Ljava/lang/Class;Ljava/util/List;)Lcom/android/settings/dashboard/conditional/Condition;

    move-result-object v0

    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public notifyChanged(Lcom/android/settings/dashboard/conditional/Condition;)V
    .locals 4
    .param p1, "condition"    # Lcom/android/settings/dashboard/conditional/Condition;

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->saveToXml()V

    .line 209
    iget-object v2, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mConditions:Ljava/util/ArrayList;

    sget-object v3, Lcom/android/settings/dashboard/conditional/ConditionManager;->CONDITION_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 210
    iget-object v2, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 211
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 212
    iget-object v2, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionListener;

    invoke-interface {v2}, Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionListener;->onConditionsChanged()V

    .line 211
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 207
    :cond_0
    return-void
.end method
