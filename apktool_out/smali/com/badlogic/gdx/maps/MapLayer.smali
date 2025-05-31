.class public Lcom/badlogic/gdx/maps/MapLayer;
.super Ljava/lang/Object;
.source "MapLayer.java"


# instance fields
.field private name:Ljava/lang/String;

.field private objects:Lcom/badlogic/gdx/maps/MapObjects;

.field private opacity:F

.field private properties:Lcom/badlogic/gdx/maps/MapProperties;

.field private visible:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/badlogic/gdx/maps/MapLayer;->name:Ljava/lang/String;

    .line 22
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/badlogic/gdx/maps/MapLayer;->opacity:F

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/maps/MapLayer;->visible:Z

    .line 24
    new-instance v0, Lcom/badlogic/gdx/maps/MapObjects;

    invoke-direct {v0}, Lcom/badlogic/gdx/maps/MapObjects;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/MapLayer;->objects:Lcom/badlogic/gdx/maps/MapObjects;

    .line 25
    new-instance v0, Lcom/badlogic/gdx/maps/MapProperties;

    invoke-direct {v0}, Lcom/badlogic/gdx/maps/MapProperties;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/MapLayer;->properties:Lcom/badlogic/gdx/maps/MapProperties;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/badlogic/gdx/maps/MapLayer;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getObjects()Lcom/badlogic/gdx/maps/MapObjects;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/badlogic/gdx/maps/MapLayer;->objects:Lcom/badlogic/gdx/maps/MapObjects;

    return-object v0
.end method

.method public getOpacity()F
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/badlogic/gdx/maps/MapLayer;->opacity:F

    return v0
.end method

.method public getProperties()Lcom/badlogic/gdx/maps/MapProperties;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/badlogic/gdx/maps/MapLayer;->properties:Lcom/badlogic/gdx/maps/MapProperties;

    return-object v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/badlogic/gdx/maps/MapLayer;->visible:Z

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/badlogic/gdx/maps/MapLayer;->name:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setOpacity(F)V
    .locals 0
    .param p1, "opacity"    # F

    .prologue
    .line 44
    iput p1, p0, Lcom/badlogic/gdx/maps/MapLayer;->opacity:F

    .line 45
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/badlogic/gdx/maps/MapLayer;->visible:Z

    .line 60
    return-void
.end method
