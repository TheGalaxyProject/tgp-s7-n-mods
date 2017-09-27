.class public Lcom/android/server/pm/state/StateMachine;
.super Ljava/lang/Object;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/state/StateMachine$StateWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final GETSTATE_DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "StateMachine"


# instance fields
.field private attributes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/pm/PersonaAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private currentState:Lcom/android/server/pm/state/StateMachine$StateWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/pm/state/StateMachine$StateWrapper",
            "<TS;TT;TA;>;"
        }
    .end annotation
.end field

.field private personaId:I

.field private pms:Lcom/android/server/pm/PersonaManagerService;

.field private previousState:Lcom/android/server/pm/state/StateMachine$StateWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/pm/state/StateMachine$StateWrapper",
            "<TS;TT;TA;>;"
        }
    .end annotation
.end field

.field private states:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TS;",
            "Lcom/android/server/pm/state/StateMachine$StateWrapper",
            "<TS;TT;TA;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/server/pm/state/StateMachine;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/state/StateMachine;->states:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/pm/state/StateMachine;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "state"    # Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pm/state/StateMachine;->stateExists(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public constructor <init>(Lcom/android/server/pm/PersonaManagerService;ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "pms"    # Lcom/android/server/pm/PersonaManagerService;
    .param p2, "personaId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PersonaManagerService;",
            "ITS;TS;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/server/pm/state/StateMachine;, "Lcom/android/server/pm/state/StateMachine<TS;TT;TA;>;"
    .local p3, "initialState":Ljava/lang/Object;, "TS;"
    .local p4, "previousState":Ljava/lang/Object;, "TS;"
    const/4 v2, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/state/StateMachine;->states:Ljava/util/Map;

    .line 29
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/state/StateMachine;->attributes:Ljava/util/Set;

    .line 32
    iput-object p1, p0, Lcom/android/server/pm/state/StateMachine;->pms:Lcom/android/server/pm/PersonaManagerService;

    .line 33
    iput p2, p0, Lcom/android/server/pm/state/StateMachine;->personaId:I

    .line 34
    new-instance v0, Lcom/android/server/pm/state/StateMachine$StateWrapper;

    invoke-direct {v0, p0, p3, v2}, Lcom/android/server/pm/state/StateMachine$StateWrapper;-><init>(Lcom/android/server/pm/state/StateMachine;Ljava/lang/Object;Lcom/android/server/pm/state/StateMachine$StateWrapper;)V

    iput-object v0, p0, Lcom/android/server/pm/state/StateMachine;->currentState:Lcom/android/server/pm/state/StateMachine$StateWrapper;

    .line 36
    iget-object v0, p0, Lcom/android/server/pm/state/StateMachine;->states:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/server/pm/state/StateMachine;->currentState:Lcom/android/server/pm/state/StateMachine$StateWrapper;

    invoke-interface {v0, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    if-eq p3, p4, :cond_0

    .line 42
    new-instance v0, Lcom/android/server/pm/state/StateMachine$StateWrapper;

    invoke-direct {v0, p0, p4, v2}, Lcom/android/server/pm/state/StateMachine$StateWrapper;-><init>(Lcom/android/server/pm/state/StateMachine;Ljava/lang/Object;Lcom/android/server/pm/state/StateMachine$StateWrapper;)V

    iput-object v0, p0, Lcom/android/server/pm/state/StateMachine;->previousState:Lcom/android/server/pm/state/StateMachine$StateWrapper;

    .line 43
    iget-object v0, p0, Lcom/android/server/pm/state/StateMachine;->states:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/server/pm/state/StateMachine;->previousState:Lcom/android/server/pm/state/StateMachine$StateWrapper;

    invoke-interface {v0, p4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/state/StateMachine;->currentState:Lcom/android/server/pm/state/StateMachine$StateWrapper;

    iput-object v0, p0, Lcom/android/server/pm/state/StateMachine;->previousState:Lcom/android/server/pm/state/StateMachine$StateWrapper;

    .line 50
    const-string/jumbo v0, "StateMachine"

    const-string/jumbo v1, "addState() previousState same as initialState"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/state/StateMachine;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getTriggerExceptions(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;TT;)",
            "Ljava/util/Set",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 191
    .local p0, "this":Lcom/android/server/pm/state/StateMachine;, "Lcom/android/server/pm/state/StateMachine<TS;TT;TA;>;"
    .local p1, "state":Ljava/lang/Object;, "TS;"
    .local p2, "trigger":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lcom/android/server/pm/state/StateMachine;->states:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/state/StateMachine$StateWrapper;

    .line 192
    .local v0, "newState":Lcom/android/server/pm/state/StateMachine$StateWrapper;, "Lcom/android/server/pm/state/StateMachine$StateWrapper<TS;TT;TA;>;"
    if-eqz v0, :cond_0

    .line 193
    invoke-static {v0}, Lcom/android/server/pm/state/StateMachine$StateWrapper;->-get2(Lcom/android/server/pm/state/StateMachine$StateWrapper;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 194
    .local v1, "triggerSet":Ljava/util/HashMap;, "Ljava/util/HashMap<TA;TS;>;"
    if-eqz v1, :cond_0

    .line 195
    invoke-static {v0}, Lcom/android/server/pm/state/StateMachine$StateWrapper;->-get2(Lcom/android/server/pm/state/StateMachine$StateWrapper;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    return-object v2

    .line 198
    .end local v1    # "triggerSet":Ljava/util/HashMap;, "Ljava/util/HashMap<TA;TS;>;"
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    return-object v2
.end method

.method private stateExists(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)Z"
        }
    .end annotation

    .prologue
    .line 206
    .local p0, "this":Lcom/android/server/pm/state/StateMachine;, "Lcom/android/server/pm/state/StateMachine<TS;TT;TA;>;"
    .local p1, "state":Ljava/lang/Object;, "TS;"
    iget-object v0, p0, Lcom/android/server/pm/state/StateMachine;->states:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addState(Ljava/lang/Object;)Lcom/android/server/pm/state/StateMachine$StateWrapper;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)",
            "Lcom/android/server/pm/state/StateMachine$StateWrapper",
            "<TS;TT;TA;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/server/pm/state/StateMachine;, "Lcom/android/server/pm/state/StateMachine<TS;TT;TA;>;"
    .local p1, "state":Ljava/lang/Object;, "TS;"
    const/4 v2, 0x0

    .line 59
    iget-object v1, p0, Lcom/android/server/pm/state/StateMachine;->states:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/state/StateMachine$StateWrapper;

    .line 60
    .local v0, "newState":Lcom/android/server/pm/state/StateMachine$StateWrapper;, "Lcom/android/server/pm/state/StateMachine$StateWrapper<TS;TT;TA;>;"
    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/android/server/pm/state/StateMachine$StateWrapper;

    .end local v0    # "newState":Lcom/android/server/pm/state/StateMachine$StateWrapper;, "Lcom/android/server/pm/state/StateMachine$StateWrapper<TS;TT;TA;>;"
    invoke-direct {v0, p0, p1, v2}, Lcom/android/server/pm/state/StateMachine$StateWrapper;-><init>(Lcom/android/server/pm/state/StateMachine;Ljava/lang/Object;Lcom/android/server/pm/state/StateMachine$StateWrapper;)V

    .line 62
    .restart local v0    # "newState":Lcom/android/server/pm/state/StateMachine$StateWrapper;, "Lcom/android/server/pm/state/StateMachine$StateWrapper<TS;TT;TA;>;"
    iget-object v1, p0, Lcom/android/server/pm/state/StateMachine;->states:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_0
    return-object v0
.end method

.method public configure(Ljava/lang/Object;)Lcom/android/server/pm/state/StateMachine$StateWrapper;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)",
            "Lcom/android/server/pm/state/StateMachine$StateWrapper",
            "<TS;TT;TA;>;"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lcom/android/server/pm/state/StateMachine;, "Lcom/android/server/pm/state/StateMachine<TS;TT;TA;>;"
    .local p1, "state":Ljava/lang/Object;, "TS;"
    iget-object v1, p0, Lcom/android/server/pm/state/StateMachine;->states:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/state/StateMachine$StateWrapper;

    .line 74
    .local v0, "configureState":Lcom/android/server/pm/state/StateMachine$StateWrapper;, "Lcom/android/server/pm/state/StateMachine$StateWrapper<TS;TT;TA;>;"
    return-object v0
.end method

.method public fireEvent(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 8
    .param p2, "propagateStateChangeEvent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)TS;"
        }
    .end annotation

    .prologue
    .line 124
    .local p0, "this":Lcom/android/server/pm/state/StateMachine;, "Lcom/android/server/pm/state/StateMachine<TS;TT;TA;>;"
    .local p1, "trigger":Ljava/lang/Object;, "TT;"
    iget-object v5, p0, Lcom/android/server/pm/state/StateMachine;->currentState:Lcom/android/server/pm/state/StateMachine$StateWrapper;

    invoke-static {v5}, Lcom/android/server/pm/state/StateMachine$StateWrapper;->-get0(Lcom/android/server/pm/state/StateMachine$StateWrapper;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 128
    const/4 v2, 0x0

    .line 129
    .local v2, "exceptionExists":Z
    iget-object v5, p0, Lcom/android/server/pm/state/StateMachine;->currentState:Lcom/android/server/pm/state/StateMachine$StateWrapper;

    invoke-static {v5}, Lcom/android/server/pm/state/StateMachine$StateWrapper;->-get1(Lcom/android/server/pm/state/StateMachine$StateWrapper;)Ljava/lang/Object;

    move-result-object v4

    .line 131
    .local v4, "newState":Ljava/lang/Object;, "TS;"
    iget-object v5, p0, Lcom/android/server/pm/state/StateMachine;->currentState:Lcom/android/server/pm/state/StateMachine$StateWrapper;

    invoke-static {v5}, Lcom/android/server/pm/state/StateMachine$StateWrapper;->-get1(Lcom/android/server/pm/state/StateMachine$StateWrapper;)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v5, p1}, Lcom/android/server/pm/state/StateMachine;->getTriggerExceptions(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    .line 132
    .local v3, "exceptionsByAttribute":Ljava/util/Set;, "Ljava/util/Set<TA;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "exceptionAttribute$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 134
    .local v0, "exceptionAttribute":Ljava/lang/Object;, "TA;"
    iget-object v5, p0, Lcom/android/server/pm/state/StateMachine;->attributes:Ljava/util/Set;

    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 135
    const-string/jumbo v5, "StateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "fireEvent() found triggerException for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " in trigger "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/android/server/pm/state/StateMachine;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const/4 v2, 0x1

    .line 137
    iget-object v5, p0, Lcom/android/server/pm/state/StateMachine;->currentState:Lcom/android/server/pm/state/StateMachine$StateWrapper;

    invoke-static {v5}, Lcom/android/server/pm/state/StateMachine$StateWrapper;->-get2(Lcom/android/server/pm/state/StateMachine$StateWrapper;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 141
    .end local v0    # "exceptionAttribute":Ljava/lang/Object;, "TA;"
    :cond_1
    if-nez v2, :cond_2

    .line 142
    iget-object v5, p0, Lcom/android/server/pm/state/StateMachine;->currentState:Lcom/android/server/pm/state/StateMachine$StateWrapper;

    invoke-static {v5}, Lcom/android/server/pm/state/StateMachine$StateWrapper;->-get0(Lcom/android/server/pm/state/StateMachine$StateWrapper;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 145
    :cond_2
    invoke-direct {p0, v4}, Lcom/android/server/pm/state/StateMachine;->stateExists(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/server/pm/state/StateMachine;->currentState:Lcom/android/server/pm/state/StateMachine$StateWrapper;

    invoke-static {v5}, Lcom/android/server/pm/state/StateMachine$StateWrapper;->-get1(Lcom/android/server/pm/state/StateMachine$StateWrapper;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 163
    .end local v1    # "exceptionAttribute$iterator":Ljava/util/Iterator;
    .end local v2    # "exceptionExists":Z
    .end local v3    # "exceptionsByAttribute":Ljava/util/Set;, "Ljava/util/Set<TA;>;"
    .end local v4    # "newState":Ljava/lang/Object;, "TS;"
    :cond_3
    :goto_0
    iget-object v5, p0, Lcom/android/server/pm/state/StateMachine;->currentState:Lcom/android/server/pm/state/StateMachine$StateWrapper;

    invoke-virtual {v5}, Lcom/android/server/pm/state/StateMachine$StateWrapper;->getState()Ljava/lang/Object;

    move-result-object v5

    return-object v5

    .line 149
    .restart local v1    # "exceptionAttribute$iterator":Ljava/util/Iterator;
    .restart local v2    # "exceptionExists":Z
    .restart local v3    # "exceptionsByAttribute":Ljava/util/Set;, "Ljava/util/Set<TA;>;"
    .restart local v4    # "newState":Ljava/lang/Object;, "TS;"
    :cond_4
    iget-object v5, p0, Lcom/android/server/pm/state/StateMachine;->currentState:Lcom/android/server/pm/state/StateMachine$StateWrapper;

    iput-object v5, p0, Lcom/android/server/pm/state/StateMachine;->previousState:Lcom/android/server/pm/state/StateMachine$StateWrapper;

    .line 150
    iget-object v5, p0, Lcom/android/server/pm/state/StateMachine;->states:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/state/StateMachine$StateWrapper;

    iput-object v5, p0, Lcom/android/server/pm/state/StateMachine;->currentState:Lcom/android/server/pm/state/StateMachine$StateWrapper;

    .line 151
    iget-object v5, p0, Lcom/android/server/pm/state/StateMachine;->pms:Lcom/android/server/pm/PersonaManagerService;

    iget v6, p0, Lcom/android/server/pm/state/StateMachine;->personaId:I

    invoke-virtual {v5, v6}, Lcom/android/server/pm/PersonaManagerService;->persistPersonaInfo(I)V

    .line 152
    if-eqz p2, :cond_3

    .line 153
    iget-object v5, p0, Lcom/android/server/pm/state/StateMachine;->pms:Lcom/android/server/pm/PersonaManagerService;

    iget v6, p0, Lcom/android/server/pm/state/StateMachine;->personaId:I

    invoke-virtual {v5, v6}, Lcom/android/server/pm/PersonaManagerService;->propagateNewStateChange(I)V

    goto :goto_0

    .line 161
    .end local v1    # "exceptionAttribute$iterator":Ljava/util/Iterator;
    .end local v2    # "exceptionExists":Z
    .end local v3    # "exceptionsByAttribute":Ljava/util/Set;, "Ljava/util/Set<TA;>;"
    .end local v4    # "newState":Ljava/lang/Object;, "TS;"
    :cond_5
    const-string/jumbo v5, "StateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "fireEvent() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " no trigger for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/pm/state/StateMachine;->currentState:Lcom/android/server/pm/state/StateMachine$StateWrapper;

    invoke-static {v7}, Lcom/android/server/pm/state/StateMachine$StateWrapper;->-get1(Lcom/android/server/pm/state/StateMachine$StateWrapper;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/android/server/pm/state/StateMachine;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getPreviousState()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lcom/android/server/pm/state/StateMachine;, "Lcom/android/server/pm/state/StateMachine<TS;TT;TA;>;"
    iget-object v0, p0, Lcom/android/server/pm/state/StateMachine;->previousState:Lcom/android/server/pm/state/StateMachine$StateWrapper;

    invoke-virtual {v0}, Lcom/android/server/pm/state/StateMachine$StateWrapper;->getState()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getState()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "this":Lcom/android/server/pm/state/StateMachine;, "Lcom/android/server/pm/state/StateMachine<TS;TT;TA;>;"
    iget-object v0, p0, Lcom/android/server/pm/state/StateMachine;->currentState:Lcom/android/server/pm/state/StateMachine$StateWrapper;

    invoke-virtual {v0}, Lcom/android/server/pm/state/StateMachine$StateWrapper;->getState()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public inState(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)Z"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "this":Lcom/android/server/pm/state/StateMachine;, "Lcom/android/server/pm/state/StateMachine<TS;TT;TA;>;"
    .local p1, "state":Ljava/lang/Object;, "TS;"
    invoke-direct {p0, p1}, Lcom/android/server/pm/state/StateMachine;->stateExists(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/android/server/pm/state/StateMachine;->states:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/state/StateMachine$StateWrapper;

    .line 108
    .local v0, "queryState":Lcom/android/server/pm/state/StateMachine$StateWrapper;, "Lcom/android/server/pm/state/StateMachine$StateWrapper<TS;TT;TA;>;"
    iget-object v1, p0, Lcom/android/server/pm/state/StateMachine;->currentState:Lcom/android/server/pm/state/StateMachine$StateWrapper;

    invoke-virtual {v1}, Lcom/android/server/pm/state/StateMachine$StateWrapper;->getState()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/pm/state/StateMachine$StateWrapper;->-wrap0(Lcom/android/server/pm/state/StateMachine$StateWrapper;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 109
    .end local v0    # "queryState":Lcom/android/server/pm/state/StateMachine$StateWrapper;, "Lcom/android/server/pm/state/StateMachine$StateWrapper<TS;TT;TA;>;"
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public instanceOf(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;TS;)Z"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, "this":Lcom/android/server/pm/state/StateMachine;, "Lcom/android/server/pm/state/StateMachine<TS;TT;TA;>;"
    .local p1, "substate":Ljava/lang/Object;, "TS;"
    .local p2, "parentState":Ljava/lang/Object;, "TS;"
    invoke-direct {p0, p1}, Lcom/android/server/pm/state/StateMachine;->stateExists(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p2}, Lcom/android/server/pm/state/StateMachine;->stateExists(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/android/server/pm/state/StateMachine;->states:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/state/StateMachine$StateWrapper;

    .line 118
    .local v0, "queryState":Lcom/android/server/pm/state/StateMachine$StateWrapper;, "Lcom/android/server/pm/state/StateMachine$StateWrapper<TS;TT;TA;>;"
    invoke-static {v0, p1}, Lcom/android/server/pm/state/StateMachine$StateWrapper;->-wrap0(Lcom/android/server/pm/state/StateMachine$StateWrapper;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 120
    .end local v0    # "queryState":Lcom/android/server/pm/state/StateMachine$StateWrapper;, "Lcom/android/server/pm/state/StateMachine$StateWrapper<TS;TT;TA;>;"
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isAttribute(Landroid/content/pm/PersonaAttribute;)Z
    .locals 1
    .param p1, "attribute"    # Landroid/content/pm/PersonaAttribute;

    .prologue
    .line 170
    .local p0, "this":Lcom/android/server/pm/state/StateMachine;, "Lcom/android/server/pm/state/StateMachine<TS;TT;TA;>;"
    iget-object v0, p0, Lcom/android/server/pm/state/StateMachine;->attributes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public listAttributes()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Landroid/content/pm/PersonaAttribute;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    .local p0, "this":Lcom/android/server/pm/state/StateMachine;, "Lcom/android/server/pm/state/StateMachine<TS;TT;TA;>;"
    iget-object v0, p0, Lcom/android/server/pm/state/StateMachine;->attributes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 211
    .local p0, "this":Lcom/android/server/pm/state/StateMachine;, "Lcom/android/server/pm/state/StateMachine<TS;TT;TA;>;"
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    return-void
.end method

.method public setAttribute(Landroid/content/pm/PersonaAttribute;Z)Z
    .locals 1
    .param p1, "attribute"    # Landroid/content/pm/PersonaAttribute;
    .param p2, "enabled"    # Z

    .prologue
    .line 177
    .local p0, "this":Lcom/android/server/pm/state/StateMachine;, "Lcom/android/server/pm/state/StateMachine<TS;TT;TA;>;"
    if-eqz p2, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/server/pm/state/StateMachine;->attributes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 182
    :goto_0
    iget-object v0, p0, Lcom/android/server/pm/state/StateMachine;->attributes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/state/StateMachine;->attributes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 202
    .local p0, "this":Lcom/android/server/pm/state/StateMachine;, "Lcom/android/server/pm/state/StateMachine<TS;TT;TA;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Has "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/state/StateMachine;->states:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " states, current state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/state/StateMachine;->getState()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
