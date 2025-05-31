.class public Lcom/badlogic/gdx/graphics/g3d/decals/SimpleOrthoGroupStrategy;
.super Ljava/lang/Object;
.source "SimpleOrthoGroupStrategy.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/g3d/decals/GroupStrategy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g3d/decals/SimpleOrthoGroupStrategy$Comparator;
    }
.end annotation


# static fields
.field private static final GROUP_BLEND:I = 0x1

.field private static final GROUP_OPAQUE:I


# instance fields
.field private comparator:Lcom/badlogic/gdx/graphics/g3d/decals/SimpleOrthoGroupStrategy$Comparator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/decals/SimpleOrthoGroupStrategy$Comparator;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/decals/SimpleOrthoGroupStrategy$Comparator;-><init>(Lcom/badlogic/gdx/graphics/g3d/decals/SimpleOrthoGroupStrategy;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/SimpleOrthoGroupStrategy;->comparator:Lcom/badlogic/gdx/graphics/g3d/decals/SimpleOrthoGroupStrategy$Comparator;

    .line 110
    return-void
.end method


# virtual methods
.method public afterGroup(I)V
    .locals 2
    .param p1, "group"    # I

    .prologue
    const/4 v1, 0x1

    .line 94
    if-ne p1, v1, :cond_0

    .line 95
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDepthMask(Z)V

    .line 96
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v1, 0xbe2

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    .line 98
    :cond_0
    return-void
.end method

.method public afterGroups()V
    .locals 2

    .prologue
    .line 107
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v1, 0xde1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    .line 108
    return-void
.end method

.method public beforeGroup(ILcom/badlogic/gdx/utils/Array;)V
    .locals 2
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
    .line 81
    .local p2, "contents":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/decals/Decal;>;"
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 82
    invoke-static {}, Lcom/badlogic/gdx/utils/Sort;->instance()Lcom/badlogic/gdx/utils/Sort;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/SimpleOrthoGroupStrategy;->comparator:Lcom/badlogic/gdx/graphics/g3d/decals/SimpleOrthoGroupStrategy$Comparator;

    invoke-virtual {v0, p2, v1}, Lcom/badlogic/gdx/utils/Sort;->sort(Lcom/badlogic/gdx/utils/Array;Ljava/util/Comparator;)V

    .line 83
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v1, 0xbe2

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    .line 86
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDepthMask(Z)V

    .line 90
    :cond_0
    return-void
.end method

.method public beforeGroups()V
    .locals 2

    .prologue
    .line 102
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v1, 0xde1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    .line 103
    return-void
.end method

.method public decideGroup(Lcom/badlogic/gdx/graphics/g3d/decals/Decal;)I
    .locals 1
    .param p1, "decal"    # Lcom/badlogic/gdx/graphics/g3d/decals/Decal;

    .prologue
    .line 76
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->getMaterial()Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getGroupShader(I)Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    .locals 1
    .param p1, "group"    # I

    .prologue
    .line 120
    const/4 v0, 0x0

    return-object v0
.end method
