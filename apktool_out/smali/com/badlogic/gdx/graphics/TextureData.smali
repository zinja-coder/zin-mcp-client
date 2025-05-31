.class public interface abstract Lcom/badlogic/gdx/graphics/TextureData;
.super Ljava/lang/Object;
.source "TextureData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/TextureData$Factory;,
        Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;
    }
.end annotation


# virtual methods
.method public abstract consumeCustomData(I)V
.end method

.method public abstract consumePixmap()Lcom/badlogic/gdx/graphics/Pixmap;
.end method

.method public abstract disposePixmap()Z
.end method

.method public abstract getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;
.end method

.method public abstract getHeight()I
.end method

.method public abstract getType()Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;
.end method

.method public abstract getWidth()I
.end method

.method public abstract isManaged()Z
.end method

.method public abstract isPrepared()Z
.end method

.method public abstract prepare()V
.end method

.method public abstract useMipMaps()Z
.end method
