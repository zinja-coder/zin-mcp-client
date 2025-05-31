.class public interface abstract Lcom/badlogic/gdx/graphics/g3d/decals/GroupStrategy;
.super Ljava/lang/Object;
.source "GroupStrategy.java"


# virtual methods
.method public abstract afterGroup(I)V
.end method

.method public abstract afterGroups()V
.end method

.method public abstract beforeGroup(ILcom/badlogic/gdx/utils/Array;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/decals/Decal;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract beforeGroups()V
.end method

.method public abstract decideGroup(Lcom/badlogic/gdx/graphics/g3d/decals/Decal;)I
.end method

.method public abstract getGroupShader(I)Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
.end method
