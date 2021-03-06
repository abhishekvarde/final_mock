# Generated by Django 3.1.7 on 2021-05-05 12:02

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='biology',
            fields=[
                ('question_id', models.AutoField(primary_key=True, serialize=False)),
                ('question', models.CharField(max_length=1000)),
                ('image', models.CharField(default='', max_length=400)),
                ('option1', models.CharField(max_length=400)),
                ('option2', models.CharField(max_length=400)),
                ('option3', models.CharField(max_length=400)),
                ('option4', models.CharField(max_length=400)),
                ('answer', models.CharField(max_length=10)),
                ('rand', models.FloatField(default=0)),
                ('is_valid', models.BooleanField(default=True)),
            ],
        ),
        migrations.CreateModel(
            name='chemistry',
            fields=[
                ('question_id', models.AutoField(primary_key=True, serialize=False)),
                ('question', models.CharField(max_length=400)),
                ('image', models.CharField(default='', max_length=400)),
                ('option1', models.CharField(max_length=400)),
                ('option2', models.CharField(max_length=400)),
                ('option3', models.CharField(max_length=400)),
                ('option4', models.CharField(max_length=400)),
                ('answer', models.CharField(max_length=10)),
                ('rand', models.FloatField(default=0)),
                ('is_valid', models.BooleanField(default=True)),
            ],
        ),
        migrations.CreateModel(
            name='math',
            fields=[
                ('question_id', models.AutoField(primary_key=True, serialize=False)),
                ('question', models.CharField(max_length=400)),
                ('image', models.CharField(default='', max_length=400)),
                ('option1', models.CharField(max_length=400)),
                ('option2', models.CharField(max_length=400)),
                ('option3', models.CharField(max_length=400)),
                ('option4', models.CharField(max_length=400)),
                ('answer', models.CharField(max_length=10)),
                ('rand', models.FloatField(default=0)),
                ('is_valid', models.BooleanField(default=True)),
            ],
        ),
        migrations.CreateModel(
            name='physics',
            fields=[
                ('question_id', models.AutoField(primary_key=True, serialize=False)),
                ('question', models.CharField(max_length=400)),
                ('image', models.CharField(default='', max_length=400)),
                ('option1', models.CharField(max_length=400)),
                ('option2', models.CharField(max_length=400)),
                ('option3', models.CharField(max_length=400)),
                ('option4', models.CharField(max_length=400)),
                ('answer', models.CharField(max_length=10)),
                ('rand', models.FloatField(default=0)),
                ('is_valid', models.BooleanField(default=True)),
            ],
        ),
        migrations.CreateModel(
            name='question_answers',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('username', models.CharField(max_length=40)),
                ('exam_type', models.CharField(max_length=4)),
                ('physics_questions', models.CharField(max_length=250)),
                ('physics_answers', models.CharField(max_length=250)),
                ('chemistry_questions', models.CharField(max_length=250)),
                ('chemistry_answers', models.CharField(max_length=250)),
                ('math_questions', models.CharField(max_length=250)),
                ('math_answers', models.CharField(max_length=250)),
                ('biology_questions', models.CharField(max_length=250)),
                ('biology_answers', models.CharField(max_length=250)),
                ('marked_answers', models.CharField(default='0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', max_length=400)),
                ('bookmark', models.CharField(default='0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', max_length=400)),
                ('invalid', models.CharField(default='0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', max_length=400)),
                ('attempted', models.CharField(default='0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', max_length=400)),
                ('time_left', models.IntegerField(default=10800000)),
            ],
        ),
        migrations.CreateModel(
            name='results',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('username', models.CharField(max_length=40)),
                ('exam_type', models.CharField(max_length=4)),
                ('physics_marks', models.IntegerField(default=0)),
                ('chemistry_marks', models.IntegerField(default=0)),
                ('math_marks', models.IntegerField(default=0)),
                ('biology_marks', models.IntegerField(default=0)),
                ('total_marks', models.IntegerField(default=0)),
            ],
        ),
        migrations.CreateModel(
            name='student',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('first_name', models.CharField(max_length=20)),
                ('last_name', models.CharField(max_length=20)),
                ('college', models.CharField(default='', max_length=40)),
                ('address_line_1', models.CharField(max_length=100)),
                ('city', models.CharField(max_length=100)),
                ('district', models.CharField(max_length=100)),
                ('state', models.CharField(max_length=100)),
                ('email', models.EmailField(max_length=254)),
                ('phone_no', models.CharField(max_length=10)),
                ('alt_phone_no', models.CharField(max_length=10)),
                ('random_no', models.IntegerField()),
            ],
        ),
    ]
