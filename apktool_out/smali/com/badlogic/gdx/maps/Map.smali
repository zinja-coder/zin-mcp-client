.class public Lcom/badlogic/gdx/maps/Map;
.super Ljava/lang/Object;
.source "Map.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# instance fields
.field private layers:Lcom/badlogic/gdx/maps/MapLayers;

.field private properties:Lcom/badlogic/gdx/maps/MapProperties;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/badlogic/gdx/maps/MapLayers;

    invoke-direct {v0}, Lcom/badlogic/gdx/maps/MapLayers;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/Map;->layers:Lcom/badlogic/gdx/maps/MapLayers;

    .line 45
    new-instance v0, Lcom/badlogic/gdx/maps/MapProperties;

    invoke-direct {v0}, Lcom/badlogic/gdx/maps/MapProperties;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/Map;->properties:Lcom/badlogic/gdx/maps/MapProperties;

    .line 50
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public getLayers()Lcom/badlogic/gdx/maps/MapLayers;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/badlogic/gdx/maps/Map;->layers:Lcom/badlogic/gdx/maps/MapLayers;

    return-object v0
.end method

.method public getProperties()Lcom/badlogic/gdx/maps/MapProperties;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/badlogic/gdx/maps/Map;->properties:Lcom/badlogic/gdx/maps/MapProperties;

    return-object v0
.end method
