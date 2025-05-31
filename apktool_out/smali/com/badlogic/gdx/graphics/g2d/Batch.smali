.class public interface abstract Lcom/badlogic/gdx/graphics/g2d/Batch;
.super Ljava/lang/Object;
.source "Batch.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# static fields
.field public static final C1:I = 0x2

.field public static final C2:I = 0x7

.field public static final C3:I = 0xc

.field public static final C4:I = 0x11

.field public static final U1:I = 0x3

.field public static final U2:I = 0x8

.field public static final U3:I = 0xd

.field public static final U4:I = 0x12

.field public static final V1:I = 0x4

.field public static final V2:I = 0x9

.field public static final V3:I = 0xe

.field public static final V4:I = 0x13

.field public static final X1:I = 0x0

.field public static final X2:I = 0x5

.field public static final X3:I = 0xa

.field public static final X4:I = 0xf

.field public static final Y1:I = 0x1

.field public static final Y2:I = 0x6

.field public static final Y3:I = 0xb

.field public static final Y4:I = 0x10


# virtual methods
.method public abstract begin()V
.end method

.method public abstract disableBlending()V
.end method

.method public abstract draw(Lcom/badlogic/gdx/graphics/Texture;FF)V
.end method

.method public abstract draw(Lcom/badlogic/gdx/graphics/Texture;FFFF)V
.end method

.method public abstract draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFF)V
.end method

.method public abstract draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFFFIIIIZZ)V
.end method

.method public abstract draw(Lcom/badlogic/gdx/graphics/Texture;FFFFIIIIZZ)V
.end method

.method public abstract draw(Lcom/badlogic/gdx/graphics/Texture;FFIIII)V
.end method

.method public abstract draw(Lcom/badlogic/gdx/graphics/Texture;[FII)V
.end method

.method public abstract draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)V
.end method

.method public abstract draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V
.end method

.method public abstract draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V
.end method

.method public abstract draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFFZ)V
.end method

.method public abstract draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/badlogic/gdx/math/Affine2;)V
.end method

.method public abstract enableBlending()V
.end method

.method public abstract end()V
.end method

.method public abstract flush()V
.end method

.method public abstract getBlendDstFunc()I
.end method

.method public abstract getBlendSrcFunc()I
.end method

.method public abstract getColor()Lcom/badlogic/gdx/graphics/Color;
.end method

.method public abstract getPackedColor()F
.end method

.method public abstract getProjectionMatrix()Lcom/badlogic/gdx/math/Matrix4;
.end method

.method public abstract getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;
.end method

.method public abstract isBlendingEnabled()Z
.end method

.method public abstract isDrawing()Z
.end method

.method public abstract setBlendFunction(II)V
.end method

.method public abstract setColor(F)V
.end method

.method public abstract setColor(FFFF)V
.end method

.method public abstract setColor(Lcom/badlogic/gdx/graphics/Color;)V
.end method

.method public abstract setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
.end method

.method public abstract setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
.end method

.method public abstract setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
.end method
