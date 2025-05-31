.class public Lcom/badlogic/gdx/maps/MapLayers;
.super Ljava/lang/Object;
.source "MapLayers.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/badlogic/gdx/maps/MapLayer;",
        ">;"
    }
.end annotation


# instance fields
.field private layers:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/maps/MapLayer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/MapLayers;->layers:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method


# virtual methods
.method public add(Lcom/badlogic/gdx/maps/MapLayer;)V
    .locals 1
    .param p1, "layer"    # Lcom/badlogic/gdx/maps/MapLayer;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/badlogic/gdx/maps/MapLayers;->layers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 54
    return-void
.end method

.method public get(I)Lcom/badlogic/gdx/maps/MapLayer;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 31
    iget-object v0, p0, Lcom/badlogic/gdx/maps/MapLayers;->layers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/maps/MapLayer;

    return-object v0
.end method

.method public get(Ljava/lang/String;)Lcom/badlogic/gdx/maps/MapLayer;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 37
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lcom/badlogic/gdx/maps/MapLayers;->layers:Lcom/badlogic/gdx/utils/Array;

    iget v2, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 38
    iget-object v3, p0, Lcom/badlogic/gdx/maps/MapLayers;->layers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/maps/MapLayer;

    .line 39
    .local v1, "layer":Lcom/badlogic/gdx/maps/MapLayer;
    invoke-virtual {v1}, Lcom/badlogic/gdx/maps/MapLayer;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 43
    .end local v1    # "layer":Lcom/badlogic/gdx/maps/MapLayer;
    :goto_1
    return-object v1

    .line 37
    .restart local v1    # "layer":Lcom/badlogic/gdx/maps/MapLayer;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 43
    .end local v1    # "layer":Lcom/badlogic/gdx/maps/MapLayer;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getByType(Ljava/lang/Class;)Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/maps/MapLayer;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/badlogic/gdx/utils/Array",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/maps/MapLayers;->getByType(Ljava/lang/Class;Lcom/badlogic/gdx/utils/Array;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    return-object v0
.end method

.method public getByType(Ljava/lang/Class;Lcom/badlogic/gdx/utils/Array;)Lcom/badlogic/gdx/utils/Array;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/maps/MapLayer;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/badlogic/gdx/utils/Array",
            "<TT;>;)",
            "Lcom/badlogic/gdx/utils/Array",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "fill":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 77
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lcom/badlogic/gdx/maps/MapLayers;->layers:Lcom/badlogic/gdx/utils/Array;

    iget v2, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 78
    iget-object v3, p0, Lcom/badlogic/gdx/maps/MapLayers;->layers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/maps/MapLayer;

    .line 79
    .local v1, "layer":Lcom/badlogic/gdx/maps/MapLayer;
    invoke-static {p1, v1}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->isInstance(Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 80
    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 77
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    .end local v1    # "layer":Lcom/badlogic/gdx/maps/MapLayer;
    :cond_1
    return-object p2
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/badlogic/gdx/maps/MapLayers;->layers:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/badlogic/gdx/maps/MapLayer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/badlogic/gdx/maps/MapLayers;->layers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 58
    iget-object v0, p0, Lcom/badlogic/gdx/maps/MapLayers;->layers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    .line 59
    return-void
.end method

.method public remove(Lcom/badlogic/gdx/maps/MapLayer;)V
    .locals 2
    .param p1, "layer"    # Lcom/badlogic/gdx/maps/MapLayer;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/badlogic/gdx/maps/MapLayers;->layers:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    .line 64
    return-void
.end method
