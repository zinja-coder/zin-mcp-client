.class public abstract Lcom/badlogic/gdx/graphics/g3d/decals/PluggableGroupStrategy;
.super Ljava/lang/Object;
.source "PluggableGroupStrategy.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/g3d/decals/GroupStrategy;


# instance fields
.field private plugs:Lcom/badlogic/gdx/utils/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/IntMap",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/decals/GroupPlug;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/badlogic/gdx/utils/IntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/PluggableGroupStrategy;->plugs:Lcom/badlogic/gdx/utils/IntMap;

    return-void
.end method


# virtual methods
.method public afterGroup(I)V
    .locals 1
    .param p1, "group"    # I

    .prologue
    .line 34
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/PluggableGroupStrategy;->plugs:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/decals/GroupPlug;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/g3d/decals/GroupPlug;->afterGroup()V

    .line 35
    return-void
.end method

.method public beforeGroup(ILcom/badlogic/gdx/utils/Array;)V
    .locals 1
    .param p1, "group"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/decals/Decal;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p2, "contents":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/decals/Decal;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/PluggableGroupStrategy;->plugs:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/decals/GroupPlug;

    invoke-interface {v0, p2}, Lcom/badlogic/gdx/graphics/g3d/decals/GroupPlug;->beforeGroup(Lcom/badlogic/gdx/utils/Array;)V

    .line 30
    return-void
.end method

.method public plugIn(Lcom/badlogic/gdx/graphics/g3d/decals/GroupPlug;I)V
    .locals 1
    .param p1, "plug"    # Lcom/badlogic/gdx/graphics/g3d/decals/GroupPlug;
    .param p2, "group"    # I

    .prologue
    .line 41
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/PluggableGroupStrategy;->plugs:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v0, p2, p1}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 42
    return-void
.end method

.method public unPlug(I)Lcom/badlogic/gdx/graphics/g3d/decals/GroupPlug;
    .locals 1
    .param p1, "group"    # I

    .prologue
    .line 48
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/PluggableGroupStrategy;->plugs:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/IntMap;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/decals/GroupPlug;

    return-object v0
.end method
