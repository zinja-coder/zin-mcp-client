.class public Lcom/badlogic/gdx/graphics/g2d/PixmapPackerIO$SaveParameters;
.super Ljava/lang/Object;
.source "PixmapPackerIO.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g2d/PixmapPackerIO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SaveParameters"
.end annotation


# instance fields
.field public format:Lcom/badlogic/gdx/graphics/g2d/PixmapPackerIO$ImageFormat;

.field public magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

.field public minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    sget-object v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPackerIO$ImageFormat;->PNG:Lcom/badlogic/gdx/graphics/g2d/PixmapPackerIO$ImageFormat;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPackerIO$SaveParameters;->format:Lcom/badlogic/gdx/graphics/g2d/PixmapPackerIO$ImageFormat;

    .line 39
    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPackerIO$SaveParameters;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 40
    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPackerIO$SaveParameters;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    return-void
.end method
