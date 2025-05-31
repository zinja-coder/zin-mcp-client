.class public Lde/fgerbig/spacepeng/events/Event;
.super Ljava/lang/Object;
.source "Event.java"


# instance fields
.field private id:Ljava/lang/String;

.field private source:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lde/fgerbig/spacepeng/events/Event;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lde/fgerbig/spacepeng/events/Event;->source:Ljava/lang/Object;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lde/fgerbig/spacepeng/events/Event;->id:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setSource(Ljava/lang/Object;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;

    .prologue
    .line 28
    iput-object p1, p0, Lde/fgerbig/spacepeng/events/Event;->source:Ljava/lang/Object;

    .line 29
    return-void
.end method
