.class public interface abstract Lcom/badlogic/gdx/graphics/glutils/VertexData;
.super Ljava/lang/Object;
.source "VertexData.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# virtual methods
.method public abstract bind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
.end method

.method public abstract bind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;[I)V
.end method

.method public abstract dispose()V
.end method

.method public abstract getAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;
.end method

.method public abstract getBuffer()Ljava/nio/FloatBuffer;
.end method

.method public abstract getNumMaxVertices()I
.end method

.method public abstract getNumVertices()I
.end method

.method public abstract invalidate()V
.end method

.method public abstract setVertices([FII)V
.end method

.method public abstract unbind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
.end method

.method public abstract unbind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;[I)V
.end method

.method public abstract updateVertices(I[FII)V
.end method
