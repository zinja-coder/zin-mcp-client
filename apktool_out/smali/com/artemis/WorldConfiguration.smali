.class public final Lcom/artemis/WorldConfiguration;
.super Ljava/lang/Object;
.source "WorldConfiguration.java"


# instance fields
.field private expectedEntityCount:I

.field injectables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/16 v0, 0x80

    iput v0, p0, Lcom/artemis/WorldConfiguration;->expectedEntityCount:I

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/artemis/WorldConfiguration;->injectables:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public expectedEntityCount()I
    .locals 1

    .prologue
    .line 11
    iget v0, p0, Lcom/artemis/WorldConfiguration;->expectedEntityCount:I

    return v0
.end method

.method public expectedEntityCount(I)Lcom/artemis/WorldConfiguration;
    .locals 0
    .param p1, "expectedEntityCount"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 21
    iput p1, p0, Lcom/artemis/WorldConfiguration;->expectedEntityCount:I

    .line 22
    return-object p0
.end method

.method public maxRebuiltIndicesPerTick()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 27
    const/4 v0, -0x1

    return v0
.end method

.method public maxRebuiltIndicesPerTick(I)Lcom/artemis/WorldConfiguration;
    .locals 0
    .param p1, "maxRebuiltIndicesPerTick"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 41
    return-object p0
.end method

.method public register(Ljava/lang/Object;)Lcom/artemis/WorldConfiguration;
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 59
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/artemis/WorldConfiguration;->register(Ljava/lang/String;Ljava/lang/Object;)Lcom/artemis/WorldConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public register(Ljava/lang/String;Ljava/lang/Object;)Lcom/artemis/WorldConfiguration;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/artemis/WorldConfiguration;->injectables:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    return-object p0
.end method
