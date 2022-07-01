"""empty message

Revision ID: fe1feda3a3f6
Revises: 55f592ded3f5
Create Date: 2022-06-25 22:40:52.005508

"""
from alembic import op
import sqlalchemy as sa


# revision identifiers, used by Alembic.
revision = 'fe1feda3a3f6'
down_revision = '55f592ded3f5'
branch_labels = None
depends_on = None


def upgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.drop_table('company')
    # ### end Alembic commands ###


def downgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.create_table('company',
    sa.Column('company_rank', sa.INTEGER(), autoincrement=False, nullable=False),
    sa.Column('company_name', sa.VARCHAR(length=35), autoincrement=False, nullable=False),
    sa.Column('company_website', sa.VARCHAR(length=50), autoincrement=False, nullable=False),
    sa.Column('company_url_logo', sa.VARCHAR(length=150), autoincrement=False, nullable=True),
    sa.Column('company_overview', sa.VARCHAR(length=200), autoincrement=False, nullable=False),
    sa.Column('company_status', sa.VARCHAR(length=6), autoincrement=False, nullable=False),
    sa.Column('company_batch', sa.VARCHAR(length=5), autoincrement=False, nullable=False),
    sa.Column('company_breakthrough', sa.BOOLEAN(), autoincrement=False, nullable=True),
    sa.Column('company_headquarters', sa.VARCHAR(length=50), autoincrement=False, nullable=False),
    sa.Column('company_job_portal', sa.VARCHAR(length=150), autoincrement=False, nullable=True),
    sa.PrimaryKeyConstraint('company_rank', name='company_pkey')
    )
    # ### end Alembic commands ###
