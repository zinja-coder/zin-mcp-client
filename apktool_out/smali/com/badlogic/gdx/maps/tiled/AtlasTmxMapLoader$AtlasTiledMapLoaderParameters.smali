.class public Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasTiledMapLoaderParameters;
.super Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader$Parameters;
.source "AtlasTmxMapLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AtlasTiledMapLoaderParameters"
.end annotation


# instance fields
.field public forceTextureFilters:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader$Parameters;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasTiledMapLoaderParameters;->forceTextureFilters:Z

    return-void
.end method
