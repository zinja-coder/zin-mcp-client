.class public Lcom/badlogic/gdx/maps/objects/PolylineMapObject;
.super Lcom/badlogic/gdx/maps/MapObject;
.source "PolylineMapObject.java"


# instance fields
.field private polyline:Lcom/badlogic/gdx/math/Polyline;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    new-array v0, v0, [F

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/maps/objects/PolylineMapObject;-><init>([F)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Polyline;)V
    .locals 0
    .param p1, "polyline"    # Lcom/badlogic/gdx/math/Polyline;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/badlogic/gdx/maps/MapObject;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/badlogic/gdx/maps/objects/PolylineMapObject;->polyline:Lcom/badlogic/gdx/math/Polyline;

    .line 50
    return-void
.end method

.method public constructor <init>([F)V
    .locals 1
    .param p1, "vertices"    # [F

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/badlogic/gdx/maps/MapObject;-><init>()V

    .line 44
    new-instance v0, Lcom/badlogic/gdx/math/Polyline;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/math/Polyline;-><init>([F)V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/objects/PolylineMapObject;->polyline:Lcom/badlogic/gdx/math/Polyline;

    .line 45
    return-void
.end method


# virtual methods
.method public getPolyline()Lcom/badlogic/gdx/math/Polyline;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/badlogic/gdx/maps/objects/PolylineMapObject;->polyline:Lcom/badlogic/gdx/math/Polyline;

    return-object v0
.end method

.method public setPolyline(Lcom/badlogic/gdx/math/Polyline;)V
    .locals 0
    .param p1, "polyline"    # Lcom/badlogic/gdx/math/Polyline;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/badlogic/gdx/maps/objects/PolylineMapObject;->polyline:Lcom/badlogic/gdx/math/Polyline;

    .line 35
    return-void
.end method
